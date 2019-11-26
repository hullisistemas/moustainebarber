import 'package:flutter/material.dart';
import 'package:Moustaine/tela_escolha.dart';

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

  void realizarLogin(){
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) => TelaEscolha())
    );
  }


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      resizeToAvoidBottomPadding: false ,
      
      body:  new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(image: AssetImage("imagens/fundoLogin.png"), fit: BoxFit.cover)
            ),
          ),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('imagens/moustaine.png',width: 240), 
                new Padding(padding: const EdgeInsets.all(30.0),),
                
                new Container(
                  alignment: Alignment.centerLeft,
                  child: new Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 0, 0 ,0 ),
                    child:new Text(
                      "Email",
                      style: new TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0                        
                      ) ,
                    ),
                  )
                ),
                new Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(15.0,0,15.0,0),
                          child: new TextFormField(
                            decoration: new InputDecoration(                      
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black87)
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black87)
                              ),
                              filled: true,
                              fillColor: Colors.white70,
                              contentPadding: EdgeInsets.all(10.0)                    
                            ),
                            
                          )
                        ),
                      ),
                  ],
                ),
                new Padding(padding: const EdgeInsets.all(5.0),),
                new Container(
                  alignment: Alignment.centerLeft,
                  child: new Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 0, 0 ,0 ),
                    child:new Text(
                      "Senha",
                      style: new TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0                        
                      ) ,
                    ),
                  )
                ),
                new Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(15.0,0,15.0,0),
                          child: new TextFormField(
                            decoration: new InputDecoration(                      
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black87)
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black87)
                              ),
                              filled: true,
                              fillColor: Colors.white70,
                              contentPadding: EdgeInsets.all(10.0)                    
                            ),
                            
                          )
                        ),
                      ),
                  ],
                ),
                new Padding(padding: const EdgeInsets.all(5.0),),
                new Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child:InkWell(
                          onTap: () => realizarLogin(),
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            decoration: new BoxDecoration(
                                color: Color.fromRGBO(2, 204, 135, 1),
                                borderRadius: new BorderRadius.circular(7.0)
                            ),
                            child: Text(
                              "Entrar com o email",
                              style: new TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),

                new Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15.0,5.0,10.0,5.0),
                        child: Container(
                          alignment: Alignment.center,
                          height: 1,
                          decoration: new BoxDecoration(
                              color: Colors.white
                          ),                          
                        ),
                      ),
                    ),
                    Text(
                      "ou",
                      style: new TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15.0,5.0,10.0,5.0),
                        child: Container(
                          alignment: Alignment.center,
                          height: 1,
                          decoration: new BoxDecoration(
                              color: Colors.white
                          ),                          
                        ),
                      ),
                    )

                  ],
                ),

                
                new Row(
                  children: <Widget>[
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: InkWell(
                            onTap: () => realizarLogin(),
                            child: Container(
                              alignment: Alignment.center,
                              height: 40,
                              decoration: new BoxDecoration(
                                  color: Color.fromRGBO(59,89,152, 1),
                                  borderRadius: new BorderRadius.circular(7.0)
                              ),
                              child: Text(
                                "Facebook",
                                style: new TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                            ),
                          )
                        ),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: InkWell(
                            onTap: () => realizarLogin(),
                            child: Container(
                              alignment: Alignment.center,
                              height: 40,
                              decoration: new BoxDecoration(
                                  color: Color.fromRGBO(184,65,65, 1),
                                  borderRadius: new BorderRadius.circular(7.0)
                              ),
                              child: Text(
                                "Google",
                                style: new TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                            ),
                          )
                        ),
                      )
                  ]
                )
               

               /* new Row(
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
                ),*/
                        
              ],
            ),
          ),
        ],
      )  
    );
  }
}
