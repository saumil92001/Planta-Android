import 'package:flutter/material.dart';
import 'package:planta/Screens/signinpage.dart';

class IntroTree extends StatelessWidget {
  final BuildContext ctxt;
  IntroTree(this.ctxt);
  @override
  Widget build(BuildContext context) {
    final int width = MediaQuery.of(context).size.width.toInt();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Let's Plant\nWith Us!",style: TextStyle(color: Color(
            0xffe3edf6),fontSize: width/15),textAlign: TextAlign.center,),
        SizedBox(height: 25,),
        Text("Together we make the world green again",style: TextStyle(color: Color(0xffe3edf6),fontSize: width/30),),
        SizedBox(height: 40,),
        Image.asset("assets/graphics/tree.png",height: width/1.4,),
        SizedBox(height: 50,),
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
              child: Text("Get Started",style: TextStyle(color: Colors.white,fontSize: width/20),),
              onPressed: (){
                Navigator.of(ctxt).push(MaterialPageRoute(builder: (ctxt)=> SignInPage()));
              }
          ),
        ),
      ],
    );
  }
}
