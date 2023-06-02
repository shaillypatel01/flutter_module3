import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Question 1',
      home: ReversNumber(),
    );
  }
}

class ReversNumber extends StatefulWidget {
  const ReversNumber({Key? key}) : super(key: key);

  @override
  State<ReversNumber> createState() => _ReversNumberState();
}

class _ReversNumberState extends State<ReversNumber> {
  var name = "";
  var _text = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 1'),
      ),
      body: Center(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                TextField(
                  onChanged: (value){
                    setState(() {
                      name = value;
                     /* print(value);*/
                    });
                  },
                  controller: _text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: "Enter Character"
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(name.characters.toList().reversed.join(""),
                  style: TextStyle(
                    fontSize: 20
                  ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
