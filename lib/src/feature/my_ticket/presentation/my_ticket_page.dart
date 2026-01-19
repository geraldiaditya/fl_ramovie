import 'package:flutter/material.dart';
import 'package:ra_movie/src/core/extensions/context_extension.dart';
import 'package:ra_movie/src/feature/my_ticket/presentation/widgets/my_ticket_card.dart';

enum TicketTab { active, history }

class MyTicketPage extends StatelessWidget {
  const MyTicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox.shrink(),
            Text("Tiket Saya", style: context.txTheme().headlineMedium),
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          ],
        ),
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
          selected: const <TicketTab>{TicketTab.active},
          onSelectionChanged: (Set<TicketTab> value) {},
          style: SegmentedButton.styleFrom(side: BorderSide.none),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => MyTicketCard(),
          ),
        ),
      ],
    );
  }
}
