import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ra_movie/src/core/extensions/context_extension.dart';
import 'package:ra_movie/src/feature/my_ticket/presentation/ticket_controller.dart';
import 'package:ra_movie/src/feature/my_ticket/presentation/widgets/ticket_card.dart';

enum TicketTab { active, history }

class MyTicketPage extends ConsumerStatefulWidget {
  const MyTicketPage({super.key});

  @override
  ConsumerState<MyTicketPage> createState() => _MyTicketPageState();
}

class _MyTicketPageState extends ConsumerState<MyTicketPage> {
  TicketTab _selectedTab = TicketTab.active;

  @override
  Widget build(BuildContext context) {
    final ticketsAsync = ref.watch(activeTicketControllerProvider);

    return Padding(
      padding: EdgeInsets.all(16.dg),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox.shrink(),
              Text("Tiket Saya", style: context.txTheme().headlineMedium),
              IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
            ],
          ),
          SizedBox(height: 16.h),
          SegmentedButton<TicketTab>(
            segments: const <ButtonSegment<TicketTab>>[
              ButtonSegment(
                value: TicketTab.active,
                label: Text("Tiket Aktif"),
              ),
              ButtonSegment(
                value: TicketTab.history,
                label: Text("Riwayat Tiket"),
              ),
            ],
            selected: <TicketTab>{_selectedTab},
            onSelectionChanged: (Set<TicketTab> value) {
              setState(() {
                _selectedTab = value.first;
              });
            },
            style: SegmentedButton.styleFrom(side: BorderSide.none),
          ),
          SizedBox(height: 16.h),
          Expanded(
            child: _selectedTab == TicketTab.active
                ? ticketsAsync.when(
                    data: (tickets) {
                      if (tickets.isEmpty) {
                        return Center(child: Text("Tidak ada tiket aktif"));
                      }
                      return ListView.separated(
                        itemCount: tickets.length,
                        separatorBuilder: (context, index) =>
                            SizedBox(height: 16.h),
                        itemBuilder: (context, index) => TicketCard(
                          ticket: tickets[index],
                        ),
                      );
                    },
                    loading: () => Center(child: CircularProgressIndicator()),
                    error: (err, stack) =>
                        Center(child: Text('Error loading tickets: $err')),
                  )
                : Consumer(
                    builder: (context, ref, child) {
                      final historyAsync =
                          ref.watch(historyTicketControllerProvider);
                      return historyAsync.when(
                        data: (tickets) {
                          if (tickets.isEmpty) {
                            return Center(
                                child: Text("Belum ada riwayat tiket"));
                          }
                          return ListView.separated(
                            itemCount: tickets.length,
                            separatorBuilder: (context, index) =>
                                SizedBox(height: 16.h),
                            itemBuilder: (context, index) => TicketCard(
                              ticket: tickets[index],
                            ),
                          );
                        },
                        loading: () =>
                            Center(child: CircularProgressIndicator()),
                        error: (err, stack) => Center(
                            child: Text('Error loading history: $err')),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
