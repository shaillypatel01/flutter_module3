import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Question 8',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Question 8'),
        ),
        body: Center(
          child: Container(
            /*color: Colors.cyan,*/
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.cyan,
              border: Border.all(
              color: Colors.black,
              width: 2,
              style: BorderStyle.solid
            ),
                gradient: LinearGradient(
                    colors: [
                      Colors.cyan.shade50,
                      Colors.cyan.shade400,
                      Colors.cyan.shade800
                    ],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft
                )
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        child: Image.asset("assets/images/img2.png")
                      ),
                      Container(
                          height: 80,
                          width: 80,
                          child: Image.asset("assets/images/img2.png")
                      ),
                    ],
                  ),
                  Text("Welcome to Tops Technologies",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 80,
                          width: 80,
                          child: Image.asset("assets/images/img3.png")
                      ),
                      Container(
                          height: 80,
                          width: 80,
                          child: Image.asset("assets/images/img4.jpg")
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
          )
        ),
      );

  }
}
