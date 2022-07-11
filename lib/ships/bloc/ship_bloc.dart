import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:ncl_coding_assessment/data/models/ship.dart';
import 'package:ncl_coding_assessment/data/repositories/ship_repository.dart';

part 'ship_event.dart';
part 'ship_state.dart';

class ShipBloc extends Bloc<ShipEvent, ShipState> {
  ShipBloc() : super(ShipInitial()) {
    on<FetchShip>(_onFetchShipEvent);
  }

  final _shipRepository = ShipRepository();

  ShipState get initialState => ShipInitial();

  Future<void> _onFetchShipEvent(
    FetchShip event,
    Emitter<ShipState> emit,
  ) async {
    emit(ShipLoading());
    await _fetchShip(event.shipID, emit);
  }

  Future<void> _fetchShip(String shipID, Emitter<ShipState> emit) async {
    try {
      final response = await _shipRepository.getShipDetail(ship: shipID);
      emit(ShipLoaded(ship: response));
    } catch (e) {
      emit(ShipError(message: 'There was an unknown error!'));

      if (e is DioError) {
        emit(ShipError(message: e.message));
      } else {
        emit(ShipError(message: 'Ship not found. ${e.toString()}'));
      }
    }
  }
}
