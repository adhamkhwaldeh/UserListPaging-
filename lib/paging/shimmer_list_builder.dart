import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shimmer/shimmer.dart';
import 'package:velocity_x/velocity_x.dart';

class ShimmerListBuilder extends HookWidget {
  final Widget cellWidget;
  final int numberOfCells;

  const ShimmerListBuilder(this.cellWidget, this.numberOfCells, {super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: const Color(0xFFEDEFF6).withValues(alpha:0.5), // Color(0x669E9E9E),
      highlightColor: const Color(0xFFEDEFF6).withValues(alpha:0.2), //Color(0x229E9E9E),
      child: SizedBox(
        height: 400.0,
        child: ListView.builder(
          itemBuilder: (_, __) => cellWidget.card.make(),
          itemCount: numberOfCells,
        ),
      ),
    );

    // Shimmer.fromColors(
    //   baseColor: Colors.grey.withValues(alpha:0.5), // Color(0x669E9E9E),
    //   highlightColor: Colors.grey.withValues(alpha:0.2), //Color(0x229E9E9E),
    //   enabled: true,
    //   child: SizedBox(
    //     height: 400.0,
    //     child: ListView.builder(
    //       itemBuilder: (_, __) => widget.cellWidget.card.make(),
    //       itemCount: widget.numberOfCells,
    //     ),
    //   ),
    // );

    // Container(
    //   width: double.infinity,
    //   padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
    //   child: Column(
    //     mainAxisSize: MainAxisSize.max,
    //     children: <Widget>[
    //       Expanded(
    //         child: Shimmer.fromColors(
    //           baseColor: Colors.grey[300],
    //           highlightColor: Colors.grey[100],
    //           enabled: true,
    //           child: ListView.builder(
    //             itemBuilder: (_, __) => Padding(
    //               padding: const EdgeInsets.only(bottom: 8.0),
    //               child: Row(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Container(
    //                     width: 48.0,
    //                     height: 48.0,
    //                     color: Colors.white,
    //                   ),
    //                   const Padding(
    //                     padding: EdgeInsets.symmetric(horizontal: 8.0),
    //                   ),
    //                   Expanded(
    //                     child: Column(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: <Widget>[
    //                         Container(
    //                           width: double.infinity,
    //                           height: 8.0,
    //                           color: Colors.white,
    //                         ),
    //                         const Padding(
    //                           padding: EdgeInsets.symmetric(vertical: 2.0),
    //                         ),
    //                         Container(
    //                           width: double.infinity,
    //                           height: 8.0,
    //                           color: Colors.white,
    //                         ),
    //                         const Padding(
    //                           padding: EdgeInsets.symmetric(vertical: 2.0),
    //                         ),
    //                         Container(
    //                           width: 40.0,
    //                           height: 8.0,
    //                           color: Colors.white,
    //                         ),
    //                       ],
    //                     ),
    //                   )
    //                 ],
    //               ),
    //             ),
    //             itemCount: 6,
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
