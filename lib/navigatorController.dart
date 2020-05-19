import 'package:ecomapp/Views/accountpage.dart';
import 'package:ecomapp/Views/cartpage.dart';
import 'package:ecomapp/Views/feedpage.dart';
import 'package:ecomapp/Views/homepage.dart';
import 'package:ecomapp/Views/messagepage.dart';
import 'package:flutter/material.dart';

class NavigatorPage extends StatefulWidget {
  NavigatorPage({Key key}) : super(key: key);
  static const String id = 'navigator';

  @override
  _NavigatorPageState createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOption = <Widget>[
    HomePage(),
    FeedPage(),
    MessagePage(),
    CartPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _widgetOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        backgroundColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.rss_feed),
            title: Text('Feed'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.message),
            title: Text('Messages'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon( Icons.shopping_cart),
            title: Text('Cart'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon( Icons.account_circle),
            title: Text('Account'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

}
