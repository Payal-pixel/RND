import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Welcome $name",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                obscureText: false,
                decoration: InputDecoration(
                    hintText: "Enter Username", labelText: "Username"),
                onChanged: (value) {
                  name = value;
                  setState(() {});
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Enter Password", labelText: "Password"),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                child: Text("Login"),
                style: TextButton.styleFrom(),
                onPressed: () {
                  Navigator.pushNamed(context, '/homepage');
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                child: Text("SignUp"),
                style: TextButton.styleFrom(),
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Forgot password?",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ),
              ElevatedButton(
                  child: Text("Forgot-password"),
                  style: TextButton.styleFrom(),
                  onPressed: () {
                    Navigator.pushNamed(context, '/forgot');
                  }),
            ],
          ),
        ));
  }
}
