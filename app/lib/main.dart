import 'package:app/Widgets/AnimationController.dart';
import 'package:app/tela_principal.dart';
import 'package:flutter/material.dart';

import 'package:app/Widgets/FlipWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moustaine',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Moustaine App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  final controlUsuario = TextEditingController();
  final controlSenha = TextEditingController();

  @override
  void dispose(){
    controlSenha.dispose();
    controlUsuario.dispose();
    super.dispose();
  }







  bool _animacao = false;

  void _realizarLogin(){


    /*TelaPrincipal telaPrincipal = new TelaPrincipal(controlUsuario.text, controlSenha.text);

    Navigator.push(context,
    MaterialPageRoute(builder: (context) => telaPrincipal));*/

    setState(() {
      _animacao = !_animacao;
    });

  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              controller: controlUsuario,              
              decoration: InputDecoration(
                labelText: 'Usuario'
              ),
            ),


            TextFormField(
              controller: controlSenha,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',                
              ),
            ),

            RaisedButton(
              child: Text("Login"),
              onPressed: _realizarLogin,
            ),
            Page()
            



          ],
        ),
      ),
     
    );
  }
}
