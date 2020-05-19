import 'package:ecomapp/Views/cartpage.dart';
import 'package:ecomapp/Views/feedpage.dart';
import 'package:ecomapp/Views/loginpage.dart';
import 'package:ecomapp/Views/messagepage.dart';
import 'package:ecomapp/Views/registerpage.dart';
import 'package:ecomapp/Views/reset_passwordpage.dart';
import 'package:ecomapp/navigatorController.dart';
import 'package:flutter/material.dart';
import 'package:ecomapp/Views/homepage.dart';
import 'Xd_account_dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: NavigatorPage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        FeedPage.id: (context) => FeedPage(),
        MessagePage.id: (context) => MessagePage(),
        CartPage.id: (context) => CartPage(),
        LoginPage.id: (context) => LoginPage(),
        RegisterPage.id: (context) => RegisterPage(),
        ResetPasswordPage.id: (context) => ResetPasswordPage(),
        NavigatorPage.id: (context) => NavigatorPage(),
        Xd_account_dashboard.id: (context) => Xd_account_dashboard(),
      },
//      theme: ThemeData(
//        primarySwatch: Colors.indigo,
//        visualDensity: VisualDensity.adaptivePlatformDensity,
//      ),
    );
  }
}

