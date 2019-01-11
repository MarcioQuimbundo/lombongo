import 'package:flutter/material.dart';

//importações

import 'package:lombongo/components/alert.dart';
class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final mediaQuerydata = MediaQuery.of(context);
    final size = mediaQuerydata.size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Lombongo App'),
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
      body: Stack(
        children: <Widget>[
          Center(
            child: ListTile(
              title: Icon(
                Icons.account_balance_wallet,
                size: 64.0,
                color: Colors.grey,
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: size / 5.0),
                child: Text('não desperdice lombongo!', style: TextStyle(fontSize: 18.0)),
              ),
            ),
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
