import 'package:dio/dio.dart';
import 'package:ncl_coding_assessment/data/models/ship.dart';
import 'package:retrofit/retrofit.dart';

part 'ship_api.g.dart';

@RestApi(baseUrl: 'https://www.ncl.com/cms-service/')
abstract class ShipApi {
  factory ShipApi(Dio dio, {String baseUrl}) = _ShipApi;

  @GET('/cruise-ships/{shipID}')
  Future<Ship> getShipDetail(@Path() String shipID);
}
