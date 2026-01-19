import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ra_movie/src/core/extensions/context_extension.dart';
import 'package:ra_movie/src/feature/cinema/presentation/cinema_controller.dart';
import 'package:ra_movie/src/feature/cinema/presentation/location_controller.dart';
import 'package:ra_movie/src/feature/cinema/presentation/widgets/cinema_card.dart';

class CinemaPage extends ConsumerStatefulWidget {
  const CinemaPage({super.key});

  @override
  ConsumerState<CinemaPage> createState() => _CinemaPageState();
}

class _CinemaPageState extends ConsumerState<CinemaPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _fetchNearestCinemas();
    });
  }

  Future<void> _fetchNearestCinemas() async {
    ref.read(selectedBrandProvider.notifier).set("Nearest");
    try {
      ref.read(cinemaControllerProvider.notifier).setLoading();
      await ref.read(locationControllerProvider.notifier).requestLocation();
      final locationState = ref.read(locationControllerProvider);

      if (locationState.hasValue && locationState.value != null) {
        final pos = locationState.value!;
        await ref
            .read(cinemaControllerProvider.notifier)
            .filter(lat: pos.latitude, lon: pos.longitude, radius: 30);
      } else if (locationState.hasError) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(locationState.error.toString())),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(e.toString())));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
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
                        onTap: _fetchNearestCinemas,
                        child: _buildFilterChips(
                          context,
                          icon: Icons.near_me,
                          text: "Terdekat",
                          isSelected: selectedBrand == "Nearest",
                        ),
                      ),
                      ...brandsAsync.maybeWhen(
                        data: (brands) => brands.map(
                          (brand) => GestureDetector(
                            onTap: () {
                              ref
                                  .read(selectedBrandProvider.notifier)
                                  .set(brand);
                              final locationState =
                                  ref.read(locationControllerProvider);
                              double? lat, lon;
                              if (locationState.hasValue &&
                                  locationState.value != null) {
                                lat = locationState.value!.latitude;
                                lon = locationState.value!.longitude;
                              }
                              ref
                                  .read(cinemaControllerProvider.notifier)
                                  .filter(brand: brand, lat: lat, lon: lon);
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
              data: (cinemas) {
                if (cinemas.isEmpty) {
                  return Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 100.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.movie_filter_outlined,
                            size: 48.dg,
                            color: context.secondary(),
                          ),
                          SizedBox(height: 16.h),
                          Text(
                            "Belum ada bioskop ditemukan di area ini",
                            style: context.txTheme().titleMedium?.copyWith(
                              color: context.secondary(),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  );
                }
                return Column(
                  spacing: 12.h,
                  children: cinemas
                      .map((cinema) => CinemaCard(cinema: cinema))
                      .toList(),
                );
              },
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
    required String text,
    IconData? icon,
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
        Spacer(),
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
      onSubmitted: (value) {
        ref.read(selectedBrandProvider.notifier).set(null);
        final locationState = ref.read(locationControllerProvider);
        double? lat, lon;
        if (locationState.hasValue && locationState.value != null) {
          lat = locationState.value!.latitude;
          lon = locationState.value!.longitude;
        }
        ref.read(cinemaControllerProvider.notifier).filter(
              name: value,
              lat: lat,
              lon: lon,
            );
      },
    );
  }
}
