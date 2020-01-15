import 'package:flutter/material.dart';

import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Expense Tracker Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 87.7,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Electric Guitar',
      amount: 165.8,
      date: DateTime.now(),
    ),
  ];

  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Tracker'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: Text('CHART'),
          ),
          Card(
            child: Text('LIST OF TX'),
          ),
        ],
      ),
    );
  }
}
