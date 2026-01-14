import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ra_movie/src/core/extensions/context_extension.dart';
import 'package:ra_movie/src/feature/cinema/presentation/widgets/cinema_card.dart';

class CinemaPage extends StatelessWidget {
  const CinemaPage({super.key});

  @override
  Widget build(BuildContext context) {
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
              child: Row(
                spacing: 8.w,
                children: [
                  _buildFilterChips(
                    context,
                    icon: Icons.near_me,
                    text: "Terdekat",
                  ),
                  _buildFilterChips(context, text: "XXI"),
                  _buildFilterChips(context, text: "CGV"),
                  _buildFilterChips(context, text: "Cinepolis"),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            Column(
              spacing: 12.h,
              children: [
                CinemaCard(),
                CinemaCard(),
                CinemaCard(),
                CinemaCard(),
              ],
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
  }) {
    final cs = context.cs();
    return Container(
      height: 36.h,
      padding: EdgeInsets.symmetric(horizontal: 16.dg),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: cs.surfaceContainer,
      ),
      child: Row(
        children: [
          if (icon != null) ...[
            Icon(icon, color: cs.primary, size: 12.dg),
            SizedBox(width: 8.w),
          ],
          Text(text, style: context.txTheme().labelLarge),
          if (icon != null) ...[
            SizedBox(width: 4.w),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: cs.primary,
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
