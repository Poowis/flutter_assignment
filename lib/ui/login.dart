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
                  labelText: "User Id",
                  hintText: "Please input your User Id",
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value.isEmpty) {
                    return "กรุณาระบุ user or password";
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: "Password",
                  hintText: "Please input your Password",
                ),
                obscureText: true,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Please input your Password";
                  } else if (value != "admin") {
                    return "user or password ไม่ถูกต้อง";
                  }
                },
              ),
              RaisedButton(
                child: Text("LOGIN"),
                onPressed: () {
                  print(_formKey.currentState.validate());
                  if (true) {
                    print("asd");
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text("sdfsd"),
                    ));
                  };
                  // Navigator.pushNamed(context, "/main");
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
