import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CombustivelApp extends StatefulWidget {
  @override
  _CombustivelAppState createState() => _CombustivelAppState();
}

class _CombustivelAppState extends State<CombustivelApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/logo.png"),
              Padding(padding: EdgeInsets.all(25)),
              Text("Saiba qual a melhor opção para abastecimento do seu carro !"),
              Padding(padding: EdgeInsets.all(25),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Preço Álcool, ex 1.59"
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
              ),
              RaisedButton(
                child: Text(
                  "Calcular",
                  style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
                ),
                color: Colors.blue,
                onPressed: (){},
              )
            ],
          ),
        ),
      )
    );
  }
}