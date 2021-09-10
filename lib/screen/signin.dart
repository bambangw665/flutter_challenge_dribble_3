import 'package:flutter/material.dart';
import 'package:flutter_responsive_1/screen/home.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueyWidht = MediaQuery.of(context).size.width;
    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    // final body
    return Scaffold(
        body: new Container(
      height: mediaQueryHeight,
      width: mediaQueyWidht,
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage("assets/plane_background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Travel with",
              // style: TextStyle(
              //   fontSize: 30,
              //   color: Colors.white,
              // ),
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              "comfort and",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              "Safety!",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: mediaQueryHeight * 0.02),
            RaisedButton(
              onPressed: () => Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (context) => HomePage())),
              
              child: Text(
                "Sign Up",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
              ),
              color: Colors.red[200],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),  
            SizedBox(height: mediaQueryHeight * 0.1),
          ],
        ),
      ),
    ));
  }
}
