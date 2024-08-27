import 'package:flutter/material.dart';
import 'package:flutter_application_3/constans.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffE5E5E5),
      body: Center(
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "REGISTER",
              style: texttextstyle.copyWith(fontSize: 30, fontWeight: bold),
            ),
            SizedBox(height: 11),
            Text(
              "Silahkan Login ke akun anda",
              style: secondarytextstyle.copyWith(fontSize: 12),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 32),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Username",
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
                        hintText: "Masukan Username anda",
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
                  "Email",
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
              height: 10,
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
                child: Text(
                  "REGISTER",
                  style: whitetextstyle.copyWith(fontWeight: bold),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: buttoncolor,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Sudah punya akun? Login sekarang.'),
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
