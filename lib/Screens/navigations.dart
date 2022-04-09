import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:planta/widgets/navigationDashboard.dart';
import 'package:planta/widgets/navigationPlantation.dart';
import 'package:planta/widgets/navigationProfile.dart';

class Navigations extends StatefulWidget {
  const Navigations({Key key}) : super(key: key);

  @override
  State<Navigations> createState() => _NavigationsState();
}

class _NavigationsState extends State<Navigations> {
  int _selectedIndex = 0;
  static const List<Widget> _selectedScreens = [
      Dashboard(),
      Plantation(),
      Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Planta"),
        leading: Padding(padding: EdgeInsets.all(5),child: Image.asset("assets/graphics/optionPlant.png",height: width/9,),),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedIndex,
        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
        color: Theme.of(context).primaryColor,
        backgroundColor: Colors.greenAccent[100],
        height: 60,
        items: [
              Icon(Icons.dashboard_outlined,color: Theme.of(context).accentColor,size: width/9,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/graphics/optionPlant.png",height: width/9,),
              ),
              Icon(Icons.person_outline,color: Theme.of(context).accentColor,size: width/9,),
        ],
      ),
      body: Center(child: _selectedScreens.elementAt(_selectedIndex),),
    );
  }
}
