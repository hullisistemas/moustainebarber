import 'package:flutter/material.dart';
import 'dart:math' as math;

class FlipWidget extends StatelessWidget {
  Widget child;
  double valor;

  FlipWidget({Key key, this.child, this.valor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Transform(
            transform: Matrix4.identity()..setEntry(3, 2, 0.006)..rotateX(valor),
            alignment: Alignment.bottomCenter,
            child: ClipRect(
              child: Align(
                alignment: Alignment.topCenter,
                heightFactor: 0.5,
                child: child,
              )
            ),
          ),
          
          Padding(
            padding: EdgeInsets.only(top: 0),
          ),
          ClipRect(
            child: Align(
              alignment: Alignment.bottomCenter,
              heightFactor: 0.5,
              child: child,
            )
          ),
        ],
    );
  }
}