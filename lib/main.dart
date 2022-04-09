import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Screens/IntroPage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Map<int,Color> colorGreen = {
    50:Color(0xff62ac8e),
    100:Color(0xff54b188),
    200:Color(0xff4bac81),
    300:Color(0xff39ad7a),
    400:Color(0xff29af74),
    500:Color(0xff1fad6e),
    600:Color(0xff14af6a),
    700:Color(0xff059555),
    800:Color(0xff017b45),
    900:Color(0xff014c2b),
  };
  final Map<int,Color> colorOrange = {
    50:Color(0xfff3dfc9),
    100:Color(0xfff5dfc7),
    200:Color(0xfff1cea6),
    300:Color(0xfff3c28d),
    400:Color(0xfff5bb7a),
    500:Color(0xfff6b063),
    600:Color(0xffeca353),
    700:Color(0xffe29138),
    800:Color(0xffe28520),
    900:Color(0xffe37b07),

  };

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: MaterialColor(0xff2AAF74,colorGreen),
        accentColor: MaterialColor(0xffF7BE7F,colorOrange),
        fontFamily: "HoboStd",
      ),
      home: IntroPage(),
    );
  }
}


