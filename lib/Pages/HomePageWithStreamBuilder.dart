// import 'package:awsomeapp/ChangeNameCard.dart';
import 'package:awsomeapp/Drawer.dart';
import 'package:awsomeapp/utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePageSB extends StatelessWidget {
  Future getData() async {
    var url = "https://jsonplaceholder.typicode.com/photos";
    var res = await http.get(url);
    var data = jsonDecode(res.body);
    // setState(() {});
    return data;
    // print(res.body);
  }

  Stream<List<String>> getStreamData(){
    var data = Stream<List<String>>.fromIterable([
      List<String>.generate(20, (index) => "Item $index")
    ]);

    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        title: Text("Awesome App"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                Constants.prefs.setBool("LoggedIn", false);
                Navigator.pushReplacementNamed(context, "/login");
              })
        ],
      ),
      body: StreamBuilder(
        stream: getStreamData(),
        // ignore: missing_return
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case (ConnectionState.none):
              return Center(
                child: Text("Fetch Something"),
              );
            case (ConnectionState.active):
            case (ConnectionState.waiting):
              return Center(
                child: CircularProgressIndicator(),
              );
            case (ConnectionState.done):
              if (snapshot.hasError) {
                return Center(
                  child: Text("Some Error occured!"),
                );
              }
              return ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ListTile(
                      title: Text(snapshot.data[index]),
                      
                    ),
                  );
                },
                itemCount: snapshot.data.length,
              );
          }
        },
      ),
      drawer: MyDrawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // myText = _nameController.text;
          // setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}

// child: ChangeNameCard(myText: myText, nameController: _nameController),
