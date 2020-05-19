import 'package:ecomapp/Views/homepage.dart';
import 'package:ecomapp/Views/loginpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegisterPage extends StatefulWidget {
  static const String id = 'register';

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _auth = FirebaseAuth.instance;

  final _key = GlobalKey<FormState>();
  String email;
  String password;
  bool _isVisible = true;
  bool _cIsVisible = true;
  void showHide(){
    setState(() {
      _isVisible = !_isVisible;
    });
  }
  void cShowHide(){
    setState(() {
      _cIsVisible = !_cIsVisible;
    });
  }
  registerToast(String toast){
    return Fluttertoast.showToast(
      msg: toast,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      textColor: Colors.white,
      backgroundColor: Colors.red,
      timeInSecForIos: 1,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.all(8.0),
            children: <Widget>[
              Container(
                child: Form(
                  key: _key,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/images/logo.png',
                        height: 220.0,
                        width: 220.0,
                      ),
                      SizedBox(
                        height: 14.0,
                        width: 14.0,
                      ),
                      Card(
                        elevation: 6.0,
                        child: TextFormField(
                          controller: _emailController,
                          onChanged: (value) => email = value,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w300,
                          ),
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(left: 20.0, right: 15.0),
                              child: Icon(Icons.email, color: Colors.blue,),
                            ),
                            contentPadding: EdgeInsets.all(18),
                            labelText: 'Email Address',
                            hintText: 'username@email.com'
                          ),
                        ),
                      ),
                      Card(
                        elevation: 6.0,
                        child: TextFormField(
                          obscureText: _isVisible,
                          controller: _passwordController,
                          onChanged: (value) => password=value,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 16.0,
                          ),
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Minimun 8 characters',
                            contentPadding: EdgeInsets.all(18.0),
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(left: 20.0,right: 15.0),
                              child: Icon(
                                Icons.phonelink_lock,
                                color: Colors.blue,
                              ),
                            ),
                            suffixIcon: IconButton(
                              onPressed: showHide,
                              icon: Icon(
                                _isVisible ? Icons.visibility_off:Icons.visibility,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Card(
                        child: TextFormField(
                          controller: _confirmPasswordController,
                          obscureText: _cIsVisible,
                          onChanged: (value) => password=value,
                          validator: (value){
                            return value.isEmpty ? 'Must not empty':null;
                          },
                          decoration: InputDecoration(

                            labelText: 'Confirm Password',
                            hintText: 'Retype Password',
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(left: 20.0,right: 15.0),
                              child: Icon(Icons.phonelink_lock, color: Colors.blue,),
                            ),
                            suffixIcon: IconButton(
                              onPressed: cShowHide,
                              icon: Icon(
                                _cIsVisible ? Icons.visibility_off : Icons.visibility,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 50.0,
                            width: 150.0,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              onPressed: () async {
                                try {
                                  final user = await _auth.createUserWithEmailAndPassword(
                                      email: _emailController.text,
                                      password: _passwordController.text);
                                  if(user!= null){
                                    Navigator.pushNamed(context, HomePage.id);
                                  } else {
                                    Navigator.pushNamed(context, RegisterPage.id);
                                  }
                                } catch(e){
                                  print(e.toString());
                                  registerToast(e.toString());
                                }
                              },
                              color: Colors.blue,
                              textColor: Colors.white,
                              child: Text(
                                'Register',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      FlatButton(
                        padding: EdgeInsets.all(10.0),
                        color: Colors.white10,
                        child: Text(
                          'Already Registered? Login',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, LoginPage.id);
                        },
                      )
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
