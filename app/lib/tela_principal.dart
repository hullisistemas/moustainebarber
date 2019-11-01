import 'package:flutter/material.dart';

class TelaPrincipal extends StatelessWidget {

  String usuario, senha;

  TelaPrincipal(String usuario, String senha){
    this.usuario = usuario;
    this.senha = senha;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Usuario: $usuario"),
            Text("Senha: $senha")
          ]
        )        
      ),
    );
  }
}