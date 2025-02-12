import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final Widget child;
  const GradientContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      foregroundDecoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white.withAlpha(20),
            Colors.white, //.withAlpha(199),
          ],
          begin: FractionalOffset.topLeft,
          end: FractionalOffset.bottomLeft,
          stops: const [
            // 0.7,
            0.8,
            1.0,
          ],
        ),
      ),
      child: child,
    );
  }
}
