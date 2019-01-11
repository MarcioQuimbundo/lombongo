import 'package:flutter/material.dart';
import 'package:lombongo/components/alert.dart';
class Renda extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RendaState();
  }
}

class _RendaState extends State<Renda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Renda'),
        backgroundColor: Colors.green,
        centerTitle: false,
        elevation: 2.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              //chamar o alert dialog
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Text("Adicionar"),
                        content: Container(
                          height: 180.0,
                          child: AlertComponents(),
                        ),
                      ));
            },
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text('Balanço: '),
                subtitle: Text("\$720"),
              ),
            ),
            Expanded(
              child: ListTile(
                title: Text('Despesas: '),
                subtitle: Text("\$230", style: TextStyle(color: Colors.red)),
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.remove_red_eye, color: Colors.green),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
