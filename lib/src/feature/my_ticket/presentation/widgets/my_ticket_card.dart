import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:ra_movie/src/core/extensions/context_extension.dart';

class MyTicketCard extends StatelessWidget {
  const MyTicketCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(8.dg),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8.w,
              children: [
                Container(
                  width: (3 * 36).w,
                  height: (4 * 36).w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.deepOrange,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Film Name",
                      style: context.txTheme().headlineMedium,
                      maxLines: 3,
                    ),
                    Text(
                      DateFormat("EEEE, dd MMM yyyy hh:mm").format(DateTime.now()),
                      style: context.txTheme().bodyMedium,
                    ),
                    Text("Location",style: context.txTheme().bodyMedium,),
                  ],
                ),
              ],
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Lihat Detail Tiket",style: context.txTheme().labelLarge,),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
