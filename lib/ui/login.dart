import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController userId = new TextEditingController();
  TextEditingController password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) => Container(
              padding: EdgeInsets.all(20),
              child: Form(
                key: _formKey,
                child: ListView(
                  children: <Widget>[
                    Image.asset(
                      "resources/login.png",
                      height: 300,
                    ),
                    TextFormField(
                      controller: userId,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: "User Id",
                        hintText: "Please input your User Id",
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "กรุณาระบุ user";
                        }
                      },
                    ),
                    TextFormField(
                      controller: password,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: "Password",
                        hintText: "Please input your Password",
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "กรุณาระบุ password";
                        }
                      },
                    ),
                    RaisedButton(
                      child: Text("LOGIN"),
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          if (userId.text != "admin" ||
                              password.text != "admin") {
                            Scaffold.of(context).showSnackBar(
                              SnackBar(
                                content: Text("user or password ไม่ถูกต้อง"),
                              ),
                            );
                          } else {
                            Navigator.pushReplacementNamed(context, "/main");
                          }
                        } else if (userId.text.isEmpty ||
                            password.text.isEmpty) {
                          Scaffold.of(context).showSnackBar(
                            SnackBar(
                              content: Text("กรุณาระบุ user or password"),
                            ),
                          );
                        }
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                          child: Text(
                            "Register New Account",
                            style: TextStyle(color: Colors.blue),
                          ),
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
      ),
    );
  }
}
