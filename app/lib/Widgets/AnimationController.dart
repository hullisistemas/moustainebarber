import 'package:Moustaine/Widgets/FlipWidget.dart';
import 'package:flutter/material.dart';


class Page extends StatefulWidget {



  const Page({Key key}) : super(key: key);

  @override
  _PageState createState() => new _PageState();
}

class _PageState extends State<Page>	with SingleTickerProviderStateMixin {

	AnimationController _controller;
  Animation<double> animation;

	@override
	void initState(){
	  
    super.initState();
	  
    _controller = new AnimationController(
		duration: const Duration(milliseconds: 1000), 
		vsync: this,
	  );

    animation = new Tween(begin: 0.0, end: 120.0).animate(_controller);

    animation.addStatusListener((status){
      
    });

    

	}

  void iniciarAPP(){
    _controller.forward();
  }

  

	@override
	void dispose(){
	  _controller.dispose();
	  super.dispose();
	}

  @override
  Widget build(BuildContext context) {
    return logoAnimado(iniciarAPP,animation: animation);
  }
}

class logoAnimado extends AnimatedWidget{

  logoAnimado(this.onTap, {Key key, Animation animation}) : super(key: key, listenable: animation);

  final Function onTap;

  Widget build(BuildContext context){

    Animation animation = listenable;
    return Center(
      child: Stack(children: <Widget>[
        FlipWidget(
          parteCima: 0,
          parteBaixo: 0,
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.red
            ),
          )
        ),

        FlipWidget(
          parteCima: (animation.value <= 60 ? 0.02617993877 * animation.value : 1.57079632679),
          parteBaixo: (animation.value > 60 ? (-1.57079632679 / (animation.value-60))  : -1.57079632679),
          onTap1: onTap,
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.amber
            ),
          )
        )

      ],)
    );
  }

}

