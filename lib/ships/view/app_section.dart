import 'package:flutter/material.dart';
import 'package:ncl_coding_assessment/ships/view/ship_dashboard.dart';
import 'package:ncl_coding_assessment/widgets/widgets.dart';

class AppSection extends StatefulWidget {
  const AppSection({super.key});

  @override
  State<AppSection> createState() => _AppSectionState();
}

class _AppSectionState extends State<AppSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0,
      ),
      body: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      children: const [
        StandardHeader(
          title: 'NCL Coding Assessment',
          subtitle: 'Nick Demari',
        ),
        ShipDashboard()
      ],
    );
  }
}
