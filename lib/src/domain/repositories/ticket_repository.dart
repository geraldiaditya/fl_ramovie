import 'package:ra_movie/src/domain/model/ticket/ticket_model.dart';

abstract class TicketRepository {
  Future<List<Ticket>> getMyTickets({String? status});
}
