import 'package:flutter/material.dart';

class InputControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InputControlState();
  }
}

class _InputControlState extends State<InputControl> {
  final TextEditingController _controller1 = new TextEditingController();
  final TextEditingController _controller2 = new TextEditingController();
  String clickSubmit1 = '';
  String clickSubmit2 = '';

  void _changeText1(String val) {
    clickSubmit1 = val;
    print("On RaisedButton : The text is $clickSubmit1");
  }

  void _changeText2(String val) {
    clickSubmit2 = val;
    print("On RaisedButton : The text is $clickSubmit2");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(children: [
            const Icon(
              Icons.trip_origin,
              size: 40,
            ),
            SizedBox(width: 10),
            Flexible(
              child: TextField(
                style: TextStyle(fontSize: 10),
                decoration: new InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                    ),
                    hintText: 'Your Location(Auto Detected)'),
                controller: _controller1,
              ),
            )
          ]),
        ),
        Container(
            child: Row(children: [
          const Icon(
            Icons.more_vert,
            size: 40,
          ),
          SizedBox(height: 40)
        ])),
        Container(
          child: Row(children: [
            const Icon(
              Icons.location_on_rounded,
              size: 40,
            ),
            SizedBox(width: 10),
            Flexible(
              child: TextField(
                style: TextStyle(fontSize: 10),
                decoration: new InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                    ),
                    hintText: 'Destination'),
                controller: _controller2,
              ),
            )
          ]),
        ),
        SizedBox(height: 40),
        ButtonTheme(
            minWidth: 240,
            child: RaisedButton(
                onPressed: () {
                  _changeText1(_controller1.text);
                  _changeText2(_controller2.text);
                  _controller1.text = '';
                  _controller2.text = '';
                },
                child: Text('Let\'s Go')))
      ],
    );
  }
}
