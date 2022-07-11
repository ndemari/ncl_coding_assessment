import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncl_coding_assessment/ships/bloc/ship_bloc.dart';
import 'package:ncl_coding_assessment/ships/view/selected_ship_widget.dart';
import 'package:ncl_coding_assessment/ships/view/ship_selector_buttons_widget.dart';
import 'package:ncl_coding_assessment/widgets/widgets.dart';

class ShipDashboard extends StatelessWidget {
  const ShipDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShipBloc, ShipState>(
      builder: (BuildContext context, ShipState state) {
        if (state is ShipInitial) {
          return const ShipSelectorButtonsWidget();
        }

        if (state is ShipError) {
          return Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
            child: EmptyScreen(
              message: state.message,
            ),
          );
        }

        if (state is ShipLoaded) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const ShipSelectorButtonsWidget(),
              const SizedBox(height: 8),
              SelectedShipWidget(ship: state.ship)
            ],
          );
        }

        return Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 2),
          child: const LoadingIndicatorWidget(),
        );
      },
    );
  }
}
