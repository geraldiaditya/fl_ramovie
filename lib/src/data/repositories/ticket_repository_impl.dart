import 'package:ra_movie/src/data/datasources/ticket_remote_data_source.dart';
import 'package:ra_movie/src/data/dto/ticket/ticket_response_dto.dart';
import 'package:ra_movie/src/domain/model/ticket/ticket_model.dart';
import 'package:ra_movie/src/domain/repositories/ticket_repository.dart';

class TicketRepositoryImpl implements TicketRepository {
  final TicketRemoteDataSource _remoteDataSource;

  TicketRepositoryImpl(this._remoteDataSource);

  @override
  Future<List<Ticket>> getMyTickets({String? status}) async {
    final response = await _remoteDataSource.getMyTickets(status: status);
    return response.tickets.map((e) => e.toDomain()).toList();
  }
}
