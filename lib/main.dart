import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/LoginPage.dart';
import 'package:flutter_application_1/pages/forgot_pass.dart';
import 'package:flutter_application_1/pages/signUp.dart';
import 'package:flutter_application_1/pages/homePage.dart';
import 'package:flutter_application_1/pages/cart.dart';
import 'package:flutter_application_1/pages/changeTheme.dart';
import 'package:flutter_application_1/pages/myOrders.dart';
import 'package:flutter_application_1/pages/profile.dart';
import 'package:flutter_application_1/pages/aboutUs.dart';
import 'package:flutter_application_1/pages/Canteen.dart';
import 'package:flutter_application_1/pages/forgot_pass.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        "/signup": (context) => signUp(),
        "/homepage": (context) => homePage(),
        "/canteen": (context) => canteen(),
        "/aboutus": (context) => aboutUs(),
        "/cart": (context) => cart(),
        "/changetheme": (context) => changetheme(),
        "/myorders": (context) => myorders(),
        "/profile": (context) => profile(),
        "/theme": (context) => changetheme(),
        "/forgot": (context) => forgot()
      },
    );
  }
}
