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
            child: new Image(image: new AssetImage("assets/online-shop-4.png")),
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
            padding: const EdgeInsets.only(top: 30.0),
            child: new Center(
              child: new Container(
                width: 200.0,
                child: new RaisedButton(
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.all(new Radius.circular(10.0))),
                  color: Colors.green,
                  textColor: Colors.white,
                  padding: new EdgeInsets.symmetric(vertical: 15.0),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(new FocusNode());
                  },
                  child: new Text('Sign in', style: new TextStyle(fontSize: 20.0),),
                ),
              ),
            ),
          ),
          new Center(
            child: new Column(
              children: <Widget>[
                new Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: new FlatButton(onPressed: null, child: new Text("Forgot password?", style: new TextStyle(color: Colors.green, fontSize: 16.0))),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: new FlatButton(onPressed: null, child: new Text("Don't have an account?", style: new TextStyle(fontSize: 16.0))),
                ),
                new FlatButton(onPressed: null, child: new Text("Register", style: new TextStyle(color: Colors.green, fontSize: 16.0),))
              ],
            ),
          )
        ],
      ),
    );
  }
}
