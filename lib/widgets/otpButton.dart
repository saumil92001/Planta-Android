import 'package:flutter/material.dart';

class OtpButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height / 14,
      width: width / 1.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffD1EBFE),
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
                  "assets/graphics/otpPhone.png",
                  height: width/7.12,
                  width: width/7.12,
                ),
              )),
          SizedBox(
            width: width/20,
          ),
          Text(
            "Sign Up with OTP",
            style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w100,
                fontSize: width/21),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
