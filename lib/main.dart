import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new Scaffold(
      body: new Onboarding(),
    ),
  ));
}

class Onboarding extends StatelessWidget {

  final TextEditingController emailTextEditingController = new TextEditingController();
  final TextEditingController passwordTextEditingController = new TextEditingController();
  final FocusNode passwordFocusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new ListView(
        children: <Widget>[
          new Container(
            child: new Image(image: new AssetImage("assets/lake.jpg")),
            padding: new EdgeInsets.only(top: 80.0, left: 20.0, right: 20.0, bottom: 40.0),
            width: 200.0,
            height: 200.0,
          ),
          new Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 40.0, top: 15.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text("EMAIL", style: new TextStyle(color: Colors.grey),),
                new TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailTextEditingController,
                  onSubmitted: (_) {
                    FocusScope.of(context).requestFocus(passwordFocusNode);
                  },
                ),
              ],
            ),
          ),
          new Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 40.0, top: 15.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text("PASSWORD", style: new TextStyle(color: Colors.grey)),
                new TextField(
                  focusNode: passwordFocusNode,
                  obscureText: true,
                  controller: passwordTextEditingController,
                ),
              ],
            ),
          ),
          new Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: new Center(
              widthFactor: 0.5,
              child: new RaisedButton(
                color: Colors.green,
                textColor: Colors.white,
                padding: new EdgeInsets.symmetric(vertical: 10.0),
                onPressed: () {
                  FocusScope.of(context).requestFocus(new FocusNode());
                },
                child: new Text('Sign in'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
