import 'package:flutter/material.dart';

class Counts extends StatelessWidget {
  int number1;
  int number2;

  Counts(this.number1, this.number2);


  @override
  Widget build(BuildContext context) {
    List<int> num = [];
    for(var i = number1; i<=number2; i++)
      {
        num.add(i);
      }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Second Page"),
        ),
        body: ListView.builder(
          itemCount: num.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(num[index].toString()),
            );
          },
        ),
      ),
    );
  }
}
