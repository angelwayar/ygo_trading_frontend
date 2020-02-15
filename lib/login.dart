import 'package:flutter/material.dart';
import 'dart:convert';
import 'api/api.dart';

class Login extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var datos;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 200.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // UserName
            MyTextFormField(
              controller: usernameController,
              hintText: "Username",
              validator: (String value) {
                if (value.isEmpty) {
                  return "Enter your Product";
                } else {
                  return null;
                }
              },
            ),

            // Password
            MyTextFormField(
              controller: passwordController,
              hintText: "Password",
              validator: (String value) {
                if (value.isEmpty) {
                  return "Enter your Product";
                } else {
                  return null;
                }
              },
            ),

            RaisedButton(
              color: Colors.blueAccent,
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                _login();
              },
            ),
            SizedBox(height: 15.0,),
            RaisedButton(
              color: Colors.blueAccent,
              child: Text(
                'Register',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                _register();
              },
            )
          ],
        ));
  }

  void _login() async {
    datos = {
      'username': usernameController.text,
      'password': passwordController.text,
    };

    var res = await CallApi().postData(datos, 'auth/login/');

    var body = json.decode(res.body);

    print(body);
    // if (body['success']) {}
  }

  void _register() async {
    datos = {
      'username': usernameController.text,
      'password': passwordController.text,
    };

    var res = await CallApi().postData(datos, 'auth/register/');

    print(res);

    var body = json.decode(res.body);

    print(body);
    // if (body['success']) {}
  }
}

class MyTextFormField extends StatelessWidget {
  final String hintText;
  final Function validator;
  final Function onSaved;
  final TextEditingController controller;

  const MyTextFormField(
      {Key key, this.hintText, this.validator, this.onSaved, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            hintText: hintText,
            contentPadding: EdgeInsets.all(15.0),
            border: InputBorder.none,
            filled: true,
            fillColor: Colors.grey[200]),
        validator: validator,
        onSaved: onSaved,
        keyboardType: TextInputType.text,
      ),
    );
    ;
  }
}
