import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shape_cam/round_button.dart';
import 'package:shape_cam/signup_screen.dart';
import 'login_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFF2EAEB)
            // image: DecorationImage(
            //   //image: NetworkImage("https://images.unsplash.com/photo-1558066858-246fbbf9446f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=282&q=80"),
            //   fit: BoxFit.cover,
            // ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              new ClipPath(
                clipper: MyClipper(),
                child: Container(
                  decoration: BoxDecoration(
                    image: new DecorationImage(
                      image: NetworkImage("https://images.unsplash.com/photo-1607457471980-84e5d89de2fb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 150.0, bottom: 100.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "ShapeCam",
                        style: GoogleFonts.raleway(textStyle: TextStyle(
                            fontSize: 60.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        ),),

                      SizedBox(
                        height: 40
                      )
                    ],
                  ),
                ),
              ),


              SizedBox(
                height: 80.0,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.0),
                    child: RoundButton(
                        colour: Color(0xFFFF7675),
                        title: 'Sign Up',
                        onPressed: () {
                          Get.to(SignUp());
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.0),
                    child: RoundButton(
                        colour: Color(0xFFFFBBA3),
                        title: 'Login',
                        onPressed: () {
                          Get.to(LoginScreen());
                        }),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path p = new Path();
    p.lineTo(size.width, 0.0);
    p.lineTo(size.width, size.height * 0.85);
    p.arcToPoint(
      Offset(0.0, size.height * 0.85),
      radius: const Radius.elliptical(50.0, 10.0),
      rotation: 0.0,
    );
    p.lineTo(0.0, 0.0);
    p.close();
    return p;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}