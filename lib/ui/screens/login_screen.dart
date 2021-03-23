import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_screen_yt/ui/screens/signup-screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            width: size.width,
            child: Image.asset(
              "assets/login-header.png",
              scale: 1,
              fit: BoxFit.fitWidth,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0 * 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * .2,
                ),
                Text('Welcome\nBack',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
                SizedBox(
                  height: size.height * .15,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(hintText: 'Email'),
                ),
                SizedBox(
                  height: size.height * .05,
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(hintText: 'Password'),
                ),
                SizedBox(
                  height: size.height * .05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sign In',
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.w900)),
                    Container(
                      height: 80,
                      width: 80,
                      child: FloatingActionButton(
                        backgroundColor: Color(0xff8E4E80),
                        onPressed: () {},
                        child: Icon(
                          CupertinoIcons.arrow_right,
                          size: 32.0,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 8.0 * 5.0, vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignupScreen())),
                child: Text('Sign UP 👉🏻',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900)),
              ),
              Text('Forget Password',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600))
            ],
          ),
        ),
      ),
    );
  }
}
