import 'package:flutter/material.dart';
import 'package:pselling/constant.dart';

import 'color.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  bgimage,
                  height: height * 0.4,
                  width: width,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: height * 0.40,
                  width: width,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.white])),
                  //color: Colors.lightGreenAccent.withOpacity(0.3),
                ),
              ],
            ),
            Center(
              child: Text(
                appName,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 20.0),
              child: Container(
                child: Text(
                  " $login",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        primarycolor.withOpacity(0.2),
                        Colors.transparent
                      ],
                    ),
                    border: Border(
                        left: BorderSide(color: primarycolor, width: 5))),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 20.0, right: 20),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: primarycolor)),
                    prefixIcon: Icon(color: primarycolor, Icons.account_circle),
                    labelText: "ENTER THE USERNAME",
                    labelStyle: TextStyle(color: primarycolor)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 20.0, right: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: primarycolor)),
                    prefixIcon: Icon(color: primarycolor, Icons.lock_open),
                    labelText: "PASSWORD",
                    labelStyle: TextStyle(color: primarycolor)),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 20),
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: primarycolor,
                          decoration: TextDecoration.underline),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10.0, right: 20),
              child: Center(
                child: SizedBox(
                  height: height * 0.06,
                  width: width - 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: primarycolor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ) // Background color
                        ),
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Create account",
                        style: TextStyle(color: primarycolor),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
