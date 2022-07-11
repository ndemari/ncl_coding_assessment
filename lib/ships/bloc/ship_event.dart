part of 'ship_bloc.dart';

abstract class ShipEvent {}

class FetchShip extends ShipEvent {
  FetchShip({required this.shipID});
  final String shipID;
}
