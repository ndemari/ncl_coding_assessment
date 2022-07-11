import 'package:dio/dio.dart';
import 'package:ncl_coding_assessment/data/api/ship_api.dart';
import 'package:ncl_coding_assessment/data/dio_interceptors/logging_interceptor.dart';
import 'package:ncl_coding_assessment/data/models/ship.dart';

class ShipRepository {
  ShipRepository();

  Future<Ship> getShipDetail({required String ship}) async {
    final dio = Dio(
      BaseOptions(
        contentType: 'application/json',
      ),
    );

    dio.interceptors.add(LoggingInterceptor());

    final client = ShipApi(dio);

    return client.getShipDetail(ship);
  }
}
