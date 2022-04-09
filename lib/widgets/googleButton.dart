import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleButton extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () async {
       await _googleSignIn.signIn().then((value) => print(value));
      },
      child: Container(
        height: height / 14,
        width: width / 1.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xff4285F3),
        ),
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    topRight: Radius.circular(7),
                    bottomRight: Radius.circular(7),
                ),
                child: Container(
                  color: Colors.white,
                  child: Image.asset(
                    "assets/graphics/googleIco.png",
                    height: width/7.12,
                    width: width/7.12,
                  ),
                )),
            SizedBox(
              width: width/20,
            ),
            Text(
              "Sign Up with Google",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w100,
              fontSize: width/21),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
