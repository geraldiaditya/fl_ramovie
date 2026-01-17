import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ra_movie/src/core/extensions/context_extension.dart';
import 'package:ra_movie/src/feature/cinema/presentation/cinema_controller.dart';
import 'package:ra_movie/src/feature/cinema/presentation/widgets/cinema_card.dart';

class CinemaPage extends ConsumerWidget {
  const CinemaPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cinemasAsync = ref.watch(cinemaControllerProvider);

    return Padding(
      padding: EdgeInsets.all(8.dg),
      child: SingleChildScrollView(
        child: Column(
          children: [
            _buildTopSection(context),
            SizedBox(height: 16),
            _buildSearchBar(context),
            SingleChildScrollView(
              padding: EdgeInsets.only(top: 12.h),
              scrollDirection: Axis.horizontal,
              child: Consumer(
                builder: (context, ref, child) {
                  final brandsAsync = ref.watch(cinemaBrandControllerProvider);
                  final selectedBrand = ref.watch(selectedBrandProvider);
                  return Row(
                    spacing: 8.w,
                    children: [
                      GestureDetector(
                        onTap: () {
                          ref.read(selectedBrandProvider.notifier).set(null);
                          ref.read(cinemaControllerProvider.notifier).filter();
                        },
                        child: _buildFilterChips(
                          context,
                          icon: Icons.near_me,
                          text: "Semua",
                          isSelected: selectedBrand == null,
                        ),
                      ),
                      ...brandsAsync.maybeWhen(
                        data: (brands) => brands.map(
                          (brand) => GestureDetector(
                            onTap: () {
                              ref
                                  .read(selectedBrandProvider.notifier)
                                  .set(brand);
                              ref
                                  .read(cinemaControllerProvider.notifier)
                                  .filter(brand: brand);
                            },
                            child: _buildFilterChips(
                              context,
                              text: brand,
                              isSelected: selectedBrand == brand,
                            ),
                          ),
                        ),
                        orElse: () => [],
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: 8.h),
            cinemasAsync.when(
              data: (cinemas) => Column(
                spacing: 12.h,
                children: cinemas
                    .map((cinema) => CinemaCard(cinema: cinema))
                    .toList(),
              ),
              error: (err, stack) =>
                  Center(child: Text('Error loading cinemas: $err')),
              loading: () => Center(child: CircularProgressIndicator()),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildFilterChips(
    BuildContext context, {
    IconData? icon,
    required String text,
    bool isSelected = false,
  }) {
    final cs = context.cs();
    final tx = context.txTheme();
    return Container(
      height: 36.h,
      padding: EdgeInsets.symmetric(horizontal: 16.dg),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: isSelected ? cs.primary : cs.surfaceContainer,
      ),
      child: Row(
        children: [
          if (icon != null) ...[
            Icon(
              icon,
              color: isSelected ? cs.onPrimary : cs.primary,
              size: 12.dg,
            ),
            SizedBox(width: 8.w),
          ],
          Text(
            text,
            style: tx.labelLarge?.copyWith(
              color: isSelected ? cs.onPrimary : cs.onSurface,
            ),
          ),
          if (icon != null) ...[
            SizedBox(width: 4.w),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: isSelected ? cs.onPrimary : cs.primary,
              size: 12.dg,
            ),
          ],
        ],
      ),
    );
  }

  Row _buildTopSection(BuildContext context) {
    final tx = context.txTheme();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Lokasi Anda", style: tx.titleSmall),
            Row(
              children: [
                Icon(Icons.location_on_outlined, size: 12.dg),
                Text("Jakarta Selatan", style: tx.titleMedium),
                Icon(Icons.keyboard_arrow_down_rounded, size: 16.dg),
              ],
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications_none_rounded),
        ),
      ],
    );
  }

  TextField _buildSearchBar(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        prefixIcon: Icon(Icons.search, color: context.secondary()),
        hintText: "Cari Nama Bioskop",
        hintStyle: context.txTheme().bodyMedium?.copyWith(
          color: context.secondary(),
        ),
        fillColor: context.surfaceContainer(),
        filled: true,
      ),
    );
  }
}
