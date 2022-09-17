import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final Widget child;
  const GradientContainer({Key? key, required this.child}) : super(key: key);

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
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(0.0, 1.0),
          stops: const [
            // 0.7,
            0.8,
            1.0,
          ],
          tileMode: TileMode.clamp,
        ),
      ),
      child: child,
    );
  }
}
