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
            Image.asset('imagens/moustaine.png',width: 240), 
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: new Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      decoration: new BoxDecoration(color: Colors.green, borderRadius: new BorderRadius.circular(10.0)),
                      child: new Text("Entrar com o Email", style: new TextStyle(fontSize: 20.0),),
                    ),
                  ),
                )
              ],
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: new Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      decoration: new BoxDecoration(color: Colors.green, borderRadius: new BorderRadius.circular(10.0)),
                      child: new Text("Entrar com o Email", style: new TextStyle(fontSize: 20.0),),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: new Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      decoration: new BoxDecoration(color: Colors.green, borderRadius: new BorderRadius.circular(10.0)),
                      child: new Text("Entrar com o Email", style: new TextStyle(fontSize: 20.0),),
                    ),
                  ),
                )
              ],
            ),
                     
          ],
        ),
      ),     
    );
  }
}
