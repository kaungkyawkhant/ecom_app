import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'package:ecomapp/Views/loginpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AccountPage extends StatefulWidget {
  static const String id = 'account';

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  File _image;
//  final _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
  }

  FirebaseUser _user;

  bool isLogIn() {
    if (_user == null) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    //Pick image from mobile phone
    Future getImage() async {
      var image = await ImagePicker.pickImage(source: ImageSource.gallery);

      setState(() {
        _image = image;
        print('Image Path $_image');
      });
    }

    //upload to firebase
    Future uploadPic(BuildContext context) async {
      String fileName = basename(_image.path);
      StorageReference firebaseStorageRef =
          FirebaseStorage.instance.ref().child(fileName);
      StorageUploadTask uploadTask = firebaseStorageRef.putFile(_image);
      StorageTaskSnapshot taskSnapshot = await uploadTask.onComplete;
      setState(() {
        print('Profile pictire uploaded');
        Scaffold.of(context)
            .showSnackBar(SnackBar(content: Text('Profile Picture Uploaded')));
      });
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        child: (_image != null)
                            ? CircleAvatar(
                                child: Image.file(
                                  _image,
                                  fit: BoxFit.fill,
                                ),
                                radius: 50.0,
                              )
                            : CircleAvatar(
                                radius: 50.0,
                                child: Image.network(
                                  "https://images.unsplash.com/photo-1502164980785-f8aa41d53611?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
//                        backgroundImage:
//                            AssetImage('assets/images/userImage.png'),
//                        backgroundColor: Colors.transparent,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: isLogIn()
                            ? FlatButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, LoginPage.id);
                                },
                                child: Text('Login'),
                              )
                            : Text(_user.email.toString()),
                      ),
                      FlatButton(
                        onPressed: () {
                          getImage();
                          if (_image != null) {
                            uploadPic(context);
                          }
                        },
                        child: Text('Change Profile Picture'),
                      )
                    ],
                  ),
                ],
              ),
              Text('Account Page'),
              SizedBox(
                height: 20.0,
              ),
              Text('Purchase History'),
            ],
          ),
        ),
      ),
    );
  }
}
