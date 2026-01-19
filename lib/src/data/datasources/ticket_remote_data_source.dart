import 'package:dio/dio.dart';
import 'package:ra_movie/src/data/dto/ticket/ticket_response_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'ticket_remote_data_source.g.dart';

@RestApi()
abstract class TicketRemoteDataSource {
  factory TicketRemoteDataSource(Dio dio, {String baseUrl}) =
      _TicketRemoteDataSource;

  @GET('/tickets')
  Future<TicketListResponseDto> getMyTickets({
    @Query('status') String? status,
  });
}
