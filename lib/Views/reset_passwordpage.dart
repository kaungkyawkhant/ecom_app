import 'package:ecomapp/Views/homepage.dart';
import 'package:ecomapp/navigatorController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetPasswordPage extends StatefulWidget {
  static const String id = 'resetpassword';
  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: ListView(
            children: <Widget>[
              Container(
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 30.0,
                      ),
                      Text('Reset Password'),
                      SizedBox(
                        height: 20.0,
                      ),
                      Card(
                        child: TextFormField(
                          validator: (value){
                            return value.contains('@') ? null:'Enter valid email';
                          },
                          controller: _emailController,
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(18.0),
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(left: 20.0, right: 15.0),
                              child: Icon(
                                Icons.email,
                                color: Colors.blue,
                              ),
                            ),
                            labelText: 'Email Address',
                            hintText: 'Enter email here',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                        height: 50.0,
                        width: 150.0,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          onPressed: () {
                            if (_emailController.text.isNotEmpty) {
                              showDialog(
                                context: context,
                                child: AlertDialog(
                                  title: Text('Reset Password link was sent.'),
                                ),
                              );
                              Navigator.pushNamed(context, NavigatorPage.id);
                            } else {
                              showDialog(
                                context: context,
                                child: AlertDialog(
                                  title: Text(
                                      'Something wrong with email address'),
                                ),
                              );
                            }
                          },
                          color: Colors.blue,
                          child: Text(
                            'Reset',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
