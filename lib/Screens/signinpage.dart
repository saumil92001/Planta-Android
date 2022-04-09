import 'dart:ui';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:planta/widgets/googleButton.dart';
import 'package:planta/widgets/otpButton.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Theme.of(context).accentColor,
            Theme.of(context).primaryColor
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: height / 1.6,
                width: width / 1.01,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 45, sigmaY: 45),
                child: Container(
                  height: height / 2.5,
                  width: width / 1.2,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                ),
              ),
              Container(
                height: height / 1.3,
                width: width / 1.1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Signup",
                      style: TextStyle(
                          fontSize: width / 18, color: Colors.black87),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "For the sake of PLANTA",
                      style: TextStyle(
                          fontSize: width / 30,
                          fontWeight: FontWeight.w300,
                          color: Colors.black54,
                          letterSpacing: 1),
                    ),
                    SizedBox(height: 27,),
                    GoogleButton(),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        SizedBox(width: 30,),
                        Expanded(child: Divider(color: Colors.black54)),
                        SizedBox(width: 20,),
                        Text("OR",style: TextStyle(color: Colors.black54),),
                        SizedBox(width: 20,),
                        Expanded(child: Divider(color: Colors.black54)),
                        SizedBox(width: 30,),
                      ],
                    ),
                    SizedBox(height: 30,),
                    OtpButton(),
                    SizedBox(height: 60,),
                    Text("OR",style: TextStyle(color: Colors.black54),),
                    SizedBox(height: 30,),
                    SizedBox(
                      width: width/2,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Theme.of(context).accentColor),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                )
                            ),
                          ),
                          child: Text("Sign In",style: TextStyle(color: Colors.white,fontSize: width/20),),
                          onPressed: (){
                            print("I am button");
                          }
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
