import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SetUserName extends StatefulWidget {
  const SetUserName({Key key}) : super(key: key);

  @override
  _SetUserNameState createState() => _SetUserNameState();
}

class _SetUserNameState extends State<SetUserName> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Theme.of(context).primaryColor,
                      Theme.of(context).accentColor
                    ],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                  ),
                  boxShadow: [BoxShadow(color: Colors.black54,spreadRadius: 1,blurRadius: 5,)],
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                  )),
            ),
          ],
        ),
          ListView(
            children: [Column(
              children: [
                SizedBox(height: height/10,),
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [BoxShadow(blurRadius: 10,spreadRadius: 0.5,color: Colors.black54),]
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.upload_outlined,size: 60, color: Colors.black54,),
                    radius: 50,
                  ),
                ),
                SizedBox(height: 10,),
                Text("Upload Photo",style: TextStyle(color: Colors.black54),),
                SizedBox(height: 30,),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    height: height/2.5,
                    width: width/1.1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 40),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Enter Display Name",
                                focusColor: Theme.of(context).primaryColor,
                                border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 40),
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: "@username",
                                focusColor: Theme.of(context).primaryColor,

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],

            ),]
          ),
          Positioned(
              bottom: 17,
              right: 12,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                  minimumSize: MaterialStateProperty.all<Size>(
                    Size(3,10),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7)
                    ),
                  ),
                ),
                child: Text("Submit",style: TextStyle(color: Colors.white),),
                onPressed: (){},
              )),
      ]
      ),
    );
  }
}

