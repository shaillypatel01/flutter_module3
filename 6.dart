import 'package:assignment/module-2/second.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

var _number = TextEditingController();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Question 6',
      home: Example(),
    );
  }
}

class Example extends StatefulWidget {
  const Example({Key? key}) : super(key: key);

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          height: 500,
          width: 400,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  controller: _number,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      label: Text("Enter the Number"),
                      hintText: "Nmber To TextFild ",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {
                int number= int.parse(_number.text);

                Navigator.push(context, MaterialPageRoute(builder: (context) => second_screens(number),));
              }, child: Text("Navigate To Second Activty"))
            ],
          ),
        ),
      ),
    );
  }
}
