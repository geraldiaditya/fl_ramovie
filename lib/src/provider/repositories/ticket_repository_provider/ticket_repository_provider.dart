import 'package:ra_movie/src/data/datasources/ticket_remote_data_source.dart';
import 'package:ra_movie/src/data/network/retrofit/api_client.dart';
import 'package:ra_movie/src/data/repositories/ticket_repository_impl.dart';
import 'package:ra_movie/src/domain/repositories/ticket_repository.dart';
import 'package:ra_movie/src/provider/network/network_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ticket_repository_provider.g.dart';

@riverpod
TicketRepository ticketRepository(Ref ref) {
  final dio = ref.read(dioProvider);
  return TicketRepositoryImpl(TicketRemoteDataSource(dio));
}
