import 'package:flutter/material.dart';
import 'package:flutter_application_2/constans.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Center(
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome Back",
              style: texttextstyle.copyWith(fontSize: 30, fontWeight: bold),
            ),
            SizedBox(height: 11),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
              style: secondarytextstyle.copyWith(fontSize: 12),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 64),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  style: texttextstyle.copyWith(fontSize: 12, fontWeight: bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: whitecolor,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Masukan Email anda",
                        hintStyle: texttextstyle.copyWith(
                            fontSize: 12, color: textcolor.withOpacity(0.6)),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 17)),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Password",
                  style: texttextstyle.copyWith(fontSize: 12, fontWeight: bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: whitecolor,
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Masukan Password anda",
                        hintStyle: texttextstyle.copyWith(
                            fontSize: 12, color: textcolor.withOpacity(0.6)),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                        suffixIcon: Icon(Icons.visibility_off)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: buttoncolor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Remember me",
                      style: greytextstyle.copyWith(fontSize: 12),
                    )
                  ],
                ),
                Text(
                  "Forgot Password ?",
                  style: texttextstyle.copyWith(fontSize: 12),
                )
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: primarybuttoncolor,
                ),
                onPressed: () {},
                child: Text(
                  "LOGIN",
                  style: whitetextstyle.copyWith(fontWeight: bold),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: buttoncolor,
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-1024.png",
                      height: 30,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Sign in with Google",
                      style: texttextstyle.copyWith(fontWeight: bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
