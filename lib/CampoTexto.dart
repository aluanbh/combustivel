import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Padding(padding: EdgeInsets.all(32),
        child:
        //TextField é um campo para digitação com um decoration para indicar oque irá ser digitado
        TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: "Digite um valor"
          ),
          //habilita e desabilita um campo de degitação
          enabled: true,
          //Máximo de caracters digitados
          maxLength: 2,
          //Bloquea para mais valores que 2 definido anteriormente
          maxLengthEnforced: false,
          style: TextStyle(
            fontSize: 25,
            color: Colors.pink
          ),
          //oculta o texto a medida que vai digitando, usado para passwords
          obscureText: true,
        ),
        )],
      ),
    );
  }
}
