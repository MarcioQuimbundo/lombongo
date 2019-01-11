import 'package:flutter/material.dart';
import 'package:lombongo/pages/renda.dart';
import 'package:lombongo/pages/despesa.dart';
import 'package:lombongo/pages/categoria.dart';

class AlertComponents extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AlertComponentsState();
  }
}

class _AlertComponentsState extends State<AlertComponents> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //este é o botão para adicionar novas rendas
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(1.0),
              child: Icon(Icons.attach_money),
            ),
            Padding(
              padding: EdgeInsets.all(4.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Renda()));
                },
                child: Text('Renda'),
              ),
            ),
          ],
        ),
        //este é o botão para adicionar despesas
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(1.0),
              child: Icon(Icons.money_off),
            ),
            Padding(
              padding: EdgeInsets.all(4.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Despesa()));
                },
                child: Text('Despesa'),
              ),
            ),
          ],
        ),
        //este é o botão para adicionar uma nova categoria
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(1.0),
              child: Icon(Icons.dashboard),
            ),
            Padding(
              padding: EdgeInsets.all(4.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Categoria()));
                },
                child: Text('Categoria'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
