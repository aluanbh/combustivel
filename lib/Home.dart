import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();
  String _textoResultado = "Saiba qual a melhor opção para abastecimento do seu carro";

  void _calcular() {
    //CONVERTE UM TEXTO PARA DOUBLE, AQUI CAPTURAMOS ATRAVES DO CONTROLLER E CONVERTEMOS
    double precoAlcool = double.tryParse(_controllerAlcool.text);
    double precoGasolina = double.tryParse(_controllerGasolina.text);
    if (precoAlcool == null || precoGasolina == null) {
      setState(() {
        _textoResultado =
            "Número inválido, digite números maiores que 0 e utilizando (.) ";
      });
    } else {
      setState(() {
        if ((precoAlcool / precoGasolina >= 0.7)) {
          _textoResultado = "Abasteça com Gasolina";
        } else {
          _textoResultado = "Abasteça com Álcool";
        }
      });
      //_limparCampos();
    }
  }

  void _reset(){
    setState(() {
      _controllerGasolina.text = "";
      _controllerAlcool.text = "";
      _textoResultado = "Saiba qual a melhor opção para abastecimento do seu carro";
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
          child: SingleChildScrollView(
        padding: EdgeInsets.all(32),
        child: Column(
          //stretch alinha e coloca todos os objetos de acordo com o padding
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: Image.asset("images/logo.png"),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                _textoResultado,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: ("Preço Álcool, ex: 1.59"),
              ),
              style: TextStyle(fontSize: 22),
              controller: _controllerAlcool,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: ("Preço Gasolina, ex: 3.59"),
              ),
              style: TextStyle(fontSize: 22),
              controller: _controllerGasolina,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: RaisedButton(
                  padding: EdgeInsets.all(15),
                  color: Colors.blue,
                  child: Text(
                    "Calcular",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  onPressed: _calcular),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: RaisedButton(
                  padding: EdgeInsets.all(15),
                  color: Colors.blue,
                  child: Text(
                    "Resetar",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  onPressed: _reset),
            ),
          ],
        ),
      )),
    );
  }
}
