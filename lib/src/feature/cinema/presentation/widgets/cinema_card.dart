import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ra_movie/src/core/extensions/context_extension.dart';

class CinemaCard extends StatelessWidget {
  const CinemaCard({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = context.cs();
    final tx = context.txTheme();
    return Container(
      padding: EdgeInsets.all(16.dg),
      decoration: BoxDecoration(
        color: cs.surfaceContainer,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 4.w,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(spacing: 4.w, children: [Icon(Icons.star), Text("4.8")]),
                  Text("Film Title", style: tx.titleMedium),
                  Text(
                    "1.5km - Jl. Sultan Iskandar muda",
                    style: tx.bodyMedium,
                  ),
                  Spacer(),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward),
                    iconAlignment: IconAlignment.end,
                    label: Text("Lihat Jadwal"),
                  ),
                ],
              ),
            ),

            Container(
              width: (3 * 36).w,
              height: (4 * 36).h,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(16.r),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
