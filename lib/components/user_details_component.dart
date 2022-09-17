import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserDetailsComponent extends StatelessWidget {
  const UserDetailsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Transform.translate(
          offset: const Offset(0, -68),
          child: SizedBox.square(
            dimension: 136,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) {
                    return Container(); // const SecondPage();
                  },
                ),
              ),
              child: const DecoratedBox(
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      Colors.white,
                      Colors.transparent,
                    ],
                    stops: [.8, 1],
                  ),
                ),
                child: Center(
                  child: Text(
                    'Press to start',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
