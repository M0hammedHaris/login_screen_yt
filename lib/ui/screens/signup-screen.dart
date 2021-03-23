import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_screen_yt/ui/widgets/signup_header_circle.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffFD989D),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Positioned(
            height: size.height * 0.5,
            width: size.width * 0.5,
            child: CustomPaint(
              painter: SignupHeaderCircle(),
            ),
          ),
          Positioned(
            height: size.height * 0.55,
            width: size.width,
            bottom: 0,
            child: CustomPaint(
              painter: SignupFooterCircle(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0 * 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * .06,
                ),
                Text('Create\nAccount',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
                SizedBox(
                  height: size.height * .05,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Name',
                      focusColor: Colors.white,
                      hintStyle: TextStyle(color: Colors.white)),
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  cursorColor: Colors.white,
                ),
                Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                      focusColor: Colors.white,
                      hintStyle: TextStyle(color: Colors.white)),
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  cursorColor: Colors.white,
                ),
                Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      focusColor: Colors.white,
                      hintStyle: TextStyle(color: Colors.white)),
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  cursorColor: Colors.white,
                ),
                Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Confirm Password',
                      focusColor: Colors.white,
                      hintStyle: TextStyle(color: Colors.white)),
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  cursorColor: Colors.white,
                ),
                Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
                SizedBox(
                  height: size.height * .04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sign Up',
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.white)),
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
          ),
        ],
      ),
    );
  }
}
