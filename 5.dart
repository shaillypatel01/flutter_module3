import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Question 5',
      home: FontSize(),
    );
  }
}

class FontSize extends StatefulWidget {
  const FontSize({Key? key}) : super(key: key);

  @override
  State<FontSize> createState() => _FontSizeState();
}

class _FontSizeState extends State<FontSize> {

  double defaultcheck = 10;
  void decrease(){
    setState(() {
      defaultcheck -= 1;
    });
  }

  void increase(){
    setState(() {
      defaultcheck += 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 5'),
      ),
      body: Center(
        child: Container(
          /*height: 200,
          width: 350,
          color: Colors.cyan,*/
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(padding: EdgeInsets.all(10),
              child: IconButton(
                onPressed: () {
                  decrease();
                },
                icon: Icon(Icons.remove,
                size: 50,
                weight: 30),
              ),
              ),
              Text("Welcome",
              style: TextStyle(
                fontSize: defaultcheck,
              ),
              ),
              Padding(padding: EdgeInsets.all(10),
                child: IconButton(
                  onPressed: () {
                    increase();
                  },
                  icon: Icon(Icons.add,
                      size: 50,
                      weight: 30),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
