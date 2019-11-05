import 'package:app/Widgets/FlipWidget.dart';
import 'package:flutter/material.dart';

class Page extends StatefulWidget {
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

    animation = new Tween(begin: 0.0, end: 1.57079632679).animate(_controller);

    animation.addStatusListener((status){
      
    });

    _controller.forward();

	}

  

	@override
	void dispose(){
	  _controller.dispose();
	  super.dispose();
	}

  @override
  Widget build(BuildContext context) {
    return a(animation: animation,);
  }
}

class a extends AnimatedWidget{

  a({Key key, Animation animation}) : super(key: key, listenable: animation);

  Widget build(BuildContext context){

    Animation animation = listenable;
    return Center(
      child: new FlipWidget(
        valor: animation.value,
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.amber

          ),
        )
      ),
    );
  }

}

