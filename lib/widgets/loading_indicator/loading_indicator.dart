import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingIndicatorWidget extends StatelessWidget {
  const LoadingIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.network(
        'https://assets8.lottiefiles.com/packages/lf20_HX0isy.json',
        repeat: true,
        reverse: true,
        animate: true,
      ),
    );
  }
}
