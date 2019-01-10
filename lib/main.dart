import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lombongo App'),
          backgroundColor: Colors.green,
          centerTitle: false,
          elevation: 2.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            )
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
        body: Container(),
      ),
    );
  }
}
