import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Plantation extends StatefulWidget {
  const Plantation({Key key}) : super(key: key);

  @override
  _PlantationState createState() => _PlantationState();
}

class _PlantationState extends State<Plantation> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Expanded(
            child: Container(
              color: Colors.greenAccent[100],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: width,),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    elevation: 7,
                    child: DottedBorder(
                      borderType: BorderType.RRect,
                      dashPattern: [6,3],
                      strokeWidth: 2,
                      radius: Radius.circular(15),
                      child: Container(
                        height: height/3,
                        width: width/1.12,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Upload Image",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: width/20
                              ),),
                            Icon(
                              Icons.upload_rounded,
                              color: Theme.of(context).primaryColor,
                              size: width/3,
                            ),
                            Text(
                              "Image size should be less than 3mb",
                              style: TextStyle(
                                  color: Colors.black26,
                                  fontSize: width/25
                              ),),
                          ],
                        ),

                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
                        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left: 20,right: 20,top: 7,bottom: 7),)
                      ),
                      onPressed: (){},
                      child: Text("Location of your plantation",style: TextStyle(fontSize: width/20),)),
                  SizedBox(height: 20,),
                ],
              ),
            ),
        ),
      ],
    );
  }
}
// Color(0xffD1EBFE),