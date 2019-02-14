import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Image.asset(
                "resources/a.jpg",
                height: 100,
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: "User Id",
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Please input value";
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  hintText: "Password",
                ),
                obscureText: true,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Please input value";
                  }
                },
              ),
              RaisedButton(
                child: Text("LOGIN"),
                onPressed: () {
                  _formKey.currentState.validate();
                  print(_formKey.currentState.context);
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                    child: Text("Register New Account"),
                    textColor: Colors.green,
                    onPressed: () {
                      Navigator.pushNamed(context, "/register");
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
