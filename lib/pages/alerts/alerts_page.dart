import 'dart:ui';
import "package:flutter/material.dart";
import 'package:get/state_manager.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Duration get loginTime => Duration(milliseconds: 2250);

  Future<String> _recoverPassword(String name) {
    var users = {};
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'Username not exists';
      }
      return "";
    });
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Container(
        child: Center(
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  blurRadius: 8.0,
                  spreadRadius: 8.0,
                  color: Colors.black.withOpacity(0.2))
            ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 16.0,
                  sigmaY: 16.0,
                ),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(
                            color: Colors.white.withOpacity(0.2), width: 1.5)),
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height / 2,
                    child: Center(
                      child: SizedBox(
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter some email';
                                      }
                                      return null;
                                    },
                                    decoration: const InputDecoration(
                                        hintText: "Enter Email",
                                        border: UnderlineInputBorder(),
                                        labelText: "Email")),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter password';
                                      }
                                      return null;
                                    },
                                    decoration: const InputDecoration(
                                        hintText: "Enter Password",
                                        border: UnderlineInputBorder(),
                                        labelText: "Password")),
                              ),
                              Spacer(),
                              MaterialButton(
                                onPressed: (() {
                                  if (!_formKey.currentState!.validate()) {
                                  } else {}
                                }),
                                child: Text('Log In'),
                                color: Colors.blue,
                              ),
                              Spacer()
                            ],
                          ),
                        ),
                      ),
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
