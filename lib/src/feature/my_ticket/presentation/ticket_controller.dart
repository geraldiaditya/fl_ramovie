import 'package:ra_movie/src/domain/model/ticket/ticket_model.dart';
import 'package:ra_movie/src/domain/repositories/ticket_repository.dart';
import 'package:ra_movie/src/provider/repositories/ticket_repository_provider/ticket_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ticket_controller.g.dart';

@riverpod
class ActiveTicketController extends _$ActiveTicketController {
  @override
  FutureOr<List<Ticket>> build() async {
    return _fetchTickets();
  }

  Future<List<Ticket>> _fetchTickets() async {
    final repository = ref.read(ticketRepositoryProvider);
    return repository.getMyTickets(status: 'active');
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(_fetchTickets);
  }
}

@riverpod
class HistoryTicketController extends _$HistoryTicketController {
  @override
  FutureOr<List<Ticket>> build() async {
    return _fetchTickets();
  }

  Future<List<Ticket>> _fetchTickets() async {
    final repository = ref.read(ticketRepositoryProvider);
    return repository.getMyTickets(status: 'history');
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(_fetchTickets);
  }
}
