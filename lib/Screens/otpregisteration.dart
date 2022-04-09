import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OtpRegisteration extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [Theme.of(context).accentColor,Colors.white,Colors.white],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 40,),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Lottie.asset("assets/lotties/verifiedOTP.json",height: height/5),
                    SizedBox(height: 20,),
                    Text("OTP Verification",style: TextStyle(fontSize: width/17),),
                    SizedBox(height: 15,),
                    Text(
                      "Enter the OTP sent to",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.normal,
                          fontSize: width/27
                      ),
                    ),
                    Text(
                      "+91-8418972297",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.normal,
                          fontSize: width/27
                      ),
                    ),
                    SizedBox(height: 35,),
                    Text("Enter Mobile Number"),
                    Padding(
                      padding: const EdgeInsets.only(top:8.0,bottom: 8.0,left: 50,right: 50),
                      child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        cursorColor: Theme.of(context).primaryColor,
                        autofocus: false,
                      ),
                    ),
                    SizedBox(height: 20,),
                    ElevatedButton(
                      child: Padding(
                        padding: const EdgeInsets.only(top:12.0,bottom: 12.0,left: 60,right: 60),
                        child: Text("Get OTP"),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
                      ),
                      onPressed: ()=>print("I am Otp"),
                    ),
                  ],
                ),
              ),
              Expanded(child: Container(),),
            ],
          ),
        ),
      ),
    );
  }
}
