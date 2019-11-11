import 'package:app/Widgets/AnimationController.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moustaine',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Moustaine App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
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
            Page() 
          ],
        ),
      ),     
    );
  }
}
