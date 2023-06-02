import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Question 9',
      home: BackgroungColorChange(),
    );
  }
}

class BackgroungColorChange extends StatefulWidget {
  const BackgroungColorChange({Key? key}) : super(key: key);

  @override
  State<BackgroungColorChange> createState() => _BackgroungColorChangeState();
}

class _BackgroungColorChangeState extends State<BackgroungColorChange> {
  var _selectedColors = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _selectedColors,
      appBar: AppBar(
        title: Text('Question 9'),
      ),
      body: Center(
        child: Container(

            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text("Select Option to Change The BackGround Colors",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20)),
                ),
                RadioListTile(
                  title: Text("Purple"),
                  value: Colors.purple,
                  groupValue: _selectedColors,
                  onChanged: (value) {
                    setState(() {
                      _selectedColors = value!;
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                RadioListTile(
                  title: Text("Pink"),
                  value: Colors.pink,
                  groupValue: _selectedColors,
                  onChanged: (value) {
                    setState(() {
                      _selectedColors = value!;
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                RadioListTile(
                  title: Text("Teal"),
                  value: Colors.teal,
                  groupValue: _selectedColors,
                  onChanged: (value) {
                    setState(() {
                      _selectedColors = value!;
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                RadioListTile(
                  title: Text("Orange"),
                  value: Colors.orange,
                  groupValue: _selectedColors,
                  onChanged: (value) {
                    setState(() {
                      _selectedColors = value!;
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                RadioListTile(
                  title: Text("Green"),
                  value: Colors.green,
                  groupValue: _selectedColors,
                  onChanged: (value) {
                    setState(() {
                      _selectedColors = value!;
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                RadioListTile(
                  title: Text("Amber"),
                  value: Colors.amber,
                  groupValue: _selectedColors,
                  onChanged: (value) {
                    setState(() {
                      _selectedColors = value!;
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                RadioListTile(
                  title: Text("Yellow"),
                  value: Colors.yellow,
                  groupValue: _selectedColors,
                  onChanged: (value) {
                    setState(() {
                      _selectedColors = value!;
                    });
                  },
                ),
              ],
            )),
      ),
    );
  }
}
