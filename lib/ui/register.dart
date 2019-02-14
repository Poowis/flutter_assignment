import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterState();
  }
}

class RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("REGISTER"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
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
                  icon: Icon(Icons.lock),
                  hintText: "Password",
                ),
                obscureText: true,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Please input value";
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: "Confirm Password",
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
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                    child: Text("Register New Account"),
                    textColor: Colors.green,
                    onPressed: () {
                      Navigator.pushNamed(context, "register");
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
