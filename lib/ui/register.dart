import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterState();
  }
}

class RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController email = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("REGISTER"),
      ),
      body: Builder(
        builder: (context) => Container(
              padding: EdgeInsets.all(20),
              child: Form(
                key: _formKey,
                child: ListView(
                  children: <Widget>[
                    TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: "Email",
                        hintText: "Please enter your Email",
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "กรุณาระบุข้อมูลให้ครบถ้วน";
                        }
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: "Password",
                        hintText: "Please enter your Password",
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "กรุณาระบุข้อมูลให้ครบถ้วน";
                        }
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: "Confirm Password",
                        hintText: "Please confirm your Password",
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "กรุณาระบุข้อมูลให้ครบถ้วน";
                        }
                      },
                    ),
                    RaisedButton(
                      child: Text(
                        "CONTINUE",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.blue,
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          if (email.text == "admin"){
                            Scaffold.of(context).showSnackBar(
                            SnackBar(
                              content: Text("user นี้มีอยู่ในระบบแล้ว"),
                            ),
                          );
                          }
                          else{
                            Navigator.pop(context);
                          }
                        } else {
                          Scaffold.of(context).showSnackBar(
                            SnackBar(
                              content: Text("กรุณาระบุข้อมูลให้ครบถ้วน"),
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
      ),
    );
  }
}
