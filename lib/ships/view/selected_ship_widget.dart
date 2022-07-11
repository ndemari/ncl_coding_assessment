import 'package:flutter/material.dart';
import 'package:ncl_coding_assessment/data/models/ship.dart';

class SelectedShipWidget extends StatelessWidget {
  const SelectedShipWidget({super.key, required this.ship});

  final Ship ship;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 200,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                ship.shipName ?? 'Unknown',
                style: const TextStyle(fontSize: 22),
              ),
              Text(
                ship.shipFacts?.passengerCapacity ?? '0',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Crew: ${ship.shipFacts?.crew ?? '0'}',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Inaugural Date: ${ship.shipFacts?.inauguralDate ?? '0'}',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
