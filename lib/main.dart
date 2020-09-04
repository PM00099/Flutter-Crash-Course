import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(
    title: "Awesome App",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Awesome App"),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            alignment: Alignment.center,
            // color: Colors.teal,
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                // shape: BoxShape.circle,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10,
                      // spreadRadius: 2,
                      offset: Offset(2.0, 5.0))
                ],
                color: Colors.teal,
                gradient: LinearGradient(colors: [
                  Colors.red,
                  Colors.blue,
                ])),
            child: Text(
              "Box",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                
              ),
            ),
          ),
        ));
  }
}
