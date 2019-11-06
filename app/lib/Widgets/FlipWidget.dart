import 'package:flutter/material.dart';

class FlipWidget extends StatelessWidget {
  Widget child;

  double parteCima, parteBaixo;

  FlipWidget({Key key, this.child, this.parteCima,this.parteBaixo, this.onTap1, this.onTap2}) : super(key: key);

  final Function onTap1,onTap2;
 
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Transform(
            transform: Matrix4.identity()..setEntry(3, 2, 0.006)..rotateX( parteCima ),
            alignment: Alignment.bottomCenter,
            child: ClipRect(
              child: Align(
                alignment: Alignment.topCenter,
                heightFactor: 0.5,
                child: GestureDetector(
                  onTap: onTap1,
                  child:child
                ),
              )
            ),
          ),
          
          Padding(
            padding: EdgeInsets.only(top: 0),
          ),
          Transform(
            transform: Matrix4.identity()..setEntry(3, 2, 0.006)..rotateX( parteBaixo ),
            alignment: Alignment.topCenter,
            child: ClipRect(
              child: Align(
                alignment: Alignment.bottomCenter,
                heightFactor: 0.5,
                child: GestureDetector(
                  onTap: onTap2,
                  child:child
                ),
              )
            ),
          ),
        ],
    );
  }
}