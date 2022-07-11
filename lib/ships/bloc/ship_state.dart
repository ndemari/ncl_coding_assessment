part of 'ship_bloc.dart';

abstract class ShipState {
  const ShipState();
}

class ShipInitial extends ShipState {}

class ShipLoading extends ShipState {}

class ShipError extends ShipState {
  final String message;

  ShipError({
    required this.message,
  });
}

class ShipLoaded extends ShipState {
  final Ship ship;

  ShipLoaded({
    required this.ship,
  });
}
