import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:planta/widgets/introTree.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage>{

  @override
  Widget build(BuildContext context) {
    final int width = MediaQuery.of(context).size.width.toInt();
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Stack(
          children: [
            Align(
              widthFactor: 0.02,
              heightFactor: 0.3,
              child: Lottie.network(
                "https://assets2.lottiefiles.com/packages/lf20_bpyoevit.json",
                height: width/1.4,
                repeat: true,
              ),
            ),
            IntroTree(context),
          ],
        ),
      ),
    );
  }
}
