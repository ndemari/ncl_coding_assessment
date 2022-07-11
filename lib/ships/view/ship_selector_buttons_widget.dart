import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncl_coding_assessment/ships/bloc/ship_bloc.dart';

class ShipSelectorButtonsWidget extends StatelessWidget {
  const ShipSelectorButtonsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final style = ElevatedButton.styleFrom(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32),
      ),
      minimumSize: const Size(220, 40),
    );
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<ShipBloc>(context).add(
                FetchShip(shipID: 'SKY'),
              );
            },
            style: style,
            child: const Text('SKY'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<ShipBloc>(context).add(
                FetchShip(shipID: 'BLISS'),
              );
            },
            style: style,
            child: const Text('BLISS'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<ShipBloc>(context).add(
                FetchShip(shipID: 'ESCAPE'),
              );
            },
            style: style,
            child: const Text('ESCAPE'),
          ),
        ],
      ),
    );
  }
}
