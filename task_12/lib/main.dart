import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text("My app"),
        // ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'imges/cat.jpeg',
                    width: 200,
                    height: 200,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(width: 16),
                  Text(
                    "Cat",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Name: Lolo',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'Age: 4',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'Gender: Female',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
