import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ra_movie/src/core/extensions/context_extension.dart';
import 'package:ra_movie/src/domain/model/ticket/ticket_model.dart';
import 'package:intl/intl.dart';

class TicketCard extends StatelessWidget {
  const TicketCard({required this.ticket, super.key});
  final Ticket ticket;

  @override
  Widget build(BuildContext context) {
    final cs = context.cs();
    final tx = context.txTheme();
    return Container(
      padding: EdgeInsets.all(16.dg),
      decoration: BoxDecoration(
        color: cs.surfaceContainer,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(20),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        spacing: 16.w,
        children: [
          Container(
            width: 80.w,
            height: 120.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              image: ticket.posterUrl.isNotEmpty
                  ? DecorationImage(
                      image: NetworkImage(ticket.posterUrl),
                      fit: BoxFit.cover,
                    )
                  : null,
              color: cs.secondaryContainer,
            ),
            child: ticket.posterUrl.isEmpty
                ? Center(child: Icon(Icons.movie, color: cs.onSecondaryContainer))
                : null,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ticket.movieTitle,
                  style: tx.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8.h),
                Row(
                  children: [
                    Icon(Icons.calendar_today, size: 14.dg, color: cs.primary),
                    SizedBox(width: 4.w),
                    Text(
                      DateFormat('EEE, d MMM y').format(ticket.date),
                      style: tx.labelMedium,
                    ),
                    SizedBox(width: 12.w),
                    Icon(Icons.access_time, size: 14.dg, color: cs.primary),
                    SizedBox(width: 4.w),
                    Text(
                      ticket.time,
                      style: tx.labelMedium,
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Row(
                  children: [
                    Icon(Icons.location_on, size: 14.dg, color: cs.secondary),
                    SizedBox(width: 4.w),
                    Expanded(
                      child: Text(
                        ticket.cinemaName,
                        style: tx.labelMedium,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                // Status Badge
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: ticket.isActive ? Colors.green.withAlpha(50) : Colors.grey.withAlpha(50),
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(
                      color: ticket.isActive ? Colors.green : Colors.grey,
                    ),
                  ),
                  child: Text(
                    ticket.isActive ? "Active" : "Past",
                    style: tx.labelSmall?.copyWith(
                      color: ticket.isActive ? Colors.green : Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
