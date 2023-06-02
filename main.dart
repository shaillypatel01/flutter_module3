import 'package:assignment/module-2/2/second-page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Question 2',
      home: PrintNumber(),
    );
  }
}

class PrintNumber extends StatefulWidget {
  const PrintNumber({Key? key}) : super(key: key);

  @override
  State<PrintNumber> createState() => _PrintNumberState();
}

class _PrintNumberState extends State<PrintNumber> {
  var _num1 = TextEditingController();
  var _num2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 2'),
      ),
      body: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(20),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: _num1,
                  decoration: InputDecoration(
                      hintText: ("Enter Starting Number"),
                      labelText: ("Starting Number :"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(20),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: _num2,
                  decoration: InputDecoration(
                      hintText: ("Enter Ending Number"),
                      labelText: ("Ending Number :"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                      )
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {
                int number1 = int.parse(_num1.text);
                int number2 = int.parse(_num2.text);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Counts(number1,number2),));
              }, child: Text("Second Page"))
            ],
          )
      ),
    );
  }
}
