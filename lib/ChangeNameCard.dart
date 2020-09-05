import 'package:awsomeapp/bg_Image.dart';
import 'package:flutter/material.dart';

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    Key key,
    @required this.myText,
    @required TextEditingController nameController,
  }) : _nameController = nameController, super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        BgImage(),
        SizedBox(
          height: 20,
        ),
        Text(myText,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            )),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _nameController,
            keyboardType: TextInputType.text,
            // obscureText: true,
            decoration: InputDecoration(
                hintText: "Enter here",
                labelText: "Name",
                border: OutlineInputBorder()),
          ),
        )
      ],
    );
  }
}
