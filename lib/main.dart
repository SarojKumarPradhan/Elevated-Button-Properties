import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Elevated Button all Properties'),
        ),
        body: Container(
          child: Center(
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Elevated Button',
                style: TextStyle(color: Colors.lightBlue),
              ),
              style: ButtonStyle(
                shadowColor: MaterialStateProperty.all<Color>(Colors.blue),
                backgroundColor: MaterialStateProperty.all(Colors.white),
                padding: MaterialStateProperty.all(EdgeInsets.all(30)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.lightBlue),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
