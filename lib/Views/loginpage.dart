import 'package:ecomapp/Views/homepage.dart';
import 'package:ecomapp/Views/registerpage.dart';
import 'package:ecomapp/Views/reset_passwordpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../navigatorController.dart';

class LoginPage extends StatefulWidget {
  static const String id = 'login';
  final user;
  LoginPage({this.user});

  @override
  _LoginPageState createState() => _LoginPageState();
}

enum LoginStatus { notSignIn, signIn }

class _LoginPageState extends State<LoginPage> {
  final _auth = FirebaseAuth.instance;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  LoginStatus _loginStatus = LoginStatus.notSignIn;
  String email, password;
  final _key = GlobalKey<FormState>(); // form key state

  //show password function
  bool _secureText = true;
  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  loginToast(String toast) {
    return Fluttertoast.showToast(
        msg: toast,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.all(15.0),
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _key,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/logo.png",
                        height: 250,
                        width: 250,
                        colorBlendMode: BlendMode.color,
                        fit: BoxFit.fitWidth,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Card(
                        elevation: 6.0,
                        child: TextFormField(
                          onSaved: (String userEmail) => email = userEmail,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                          validator: (String userEmail) {
                            return userEmail.isEmpty ? 'Emaill must provide' :null;
                          },
                          controller: _emailController,
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(left: 20, right: 15),
                              child: Icon(Icons.person, color: Colors.black),
                            ),
                            contentPadding: EdgeInsets.all(18),
                            labelText: "Username"),
                        ),
                      ),
                      Card(
                        elevation: 6.0,
                        child: TextFormField(
                          validator: (e) {
                            if (e.isEmpty) {
                              loginToast('Password Can\'t be Empty');
                            }
                            return e;
                          },
                          obscureText: _secureText,
                          onSaved: (e) => password = e,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                          decoration: InputDecoration(
                            labelText: "Password",
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(left: 20, right: 15),
                              child:
                                  Icon(Icons.phonelink_lock, color: Colors.black),
                            ),
                            suffixIcon: IconButton(
                              onPressed: showHide,
                              icon: Icon(_secureText
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                            ),
                            contentPadding: EdgeInsets.all(18),
                          ),
                          controller: _passwordController,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, ResetPasswordPage.id);
                        },
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(14.0),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(
                            height: 50.0,
                            width: 150.00,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)),
                              child: Text(
                                "Login",
                                style: TextStyle(fontSize: 20.0),
                              ),
                              textColor: Colors.white,
                              color: Colors.indigo,
                              onPressed: () async {
                                try {
                                  final user =
                                      await _auth.signInWithEmailAndPassword(
                                          email: _emailController.text, password: _passwordController.text);
                                  if (user != null) {
                                    Navigator.pushNamed(context, NavigatorPage.id).then((value) => user);
                                  }
                                } catch (e) {
                                  print(e);
                                  loginToast(e.toString());
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(14.0),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(
                            height: 50.0,
                            width: 150.0,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              color: Colors.blue,
                              child: Text(
                                'Register',
                                style: TextStyle(
//                                color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 20.0,
                                ),
                              ),
                              textColor: Colors.white,
                              onPressed: (){
                                Navigator.pushNamed(context, RegisterPage.id);
                              },
                            ),
                          ),
                        ],
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

//showDialog(
//context: context,
//child: AlertDialog(
//title: new Text("Please Call at 8951992208"),
//));