import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ra_movie/src/core/extensions/context_extension.dart';
import 'package:ra_movie/src/domain/model/cinema/cinema_model.dart';

class CinemaCard extends StatelessWidget {
  final Cinema cinema;

  const CinemaCard({super.key, required this.cinema});

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
                  Row(
                    spacing: 4.w,
                    children: [
                      Icon(cinema.rating > 4.0 ? Icons.star : Icons.star_half),
                      Text(cinema.rating.toString()),
                    ],
                  ),
                  Text(cinema.name, style: tx.titleMedium),
                  Text(cinema.address, style: tx.bodyMedium),
                  Spacer(),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward),
                    iconAlignment: IconAlignment.end,
                    label: Text("Lihat Jadwal"),
                    style: ElevatedButton.styleFrom(
                      textStyle: tx.titleSmall?.copyWith(letterSpacing: 1.2),
                      backgroundColor: cs.secondary,
                      foregroundColor: cs.onSecondary,
                      padding: .all(8),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: (3 * 32).w,
              height: (4 * 32).h,
              decoration: BoxDecoration(
                color: Colors.grey, // Placeholder color
                borderRadius: BorderRadius.circular(16.r),
                image: cinema.pictureUrl.isNotEmpty
                    ? DecorationImage(
                        image: NetworkImage(cinema.pictureUrl),
                        fit: BoxFit.cover,
                      )
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
