import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reptils_bio/ui/home_screen.dart';
import 'package:reptils_bio/widget/custom_widget.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splash_screen';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isNotChangedPage = true;

  @override
  initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 5), (t) {
      isNotChangedPage
          ? Navigator.pushNamedAndRemoveUntil(
              context, HomeScreen.routeName, (route) => false)
          : null;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage("assets/bg_komodo.jpg"), fit: BoxFit.cover),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextHeading(
                  text: "Reptile Biography",
                  fontSize: 30,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.bold,
                  textColor: Colors.white,
                ),
                const SizedBox(
                  height: 300,
                ),
                TextHeading(
                  text: "Ready to watch?",
                  fontSize: 22,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.bold,
                  textColor: Colors.white,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextBody(
                  text:
                      "Reptile Biography is an application that displays information about reptiles in the world. The application provides information about various aspects of reptiles",
                  textAlign: TextAlign.center,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  textColor: Colors.white,
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    isNotChangedPage = false;
                    Navigator.pushNamedAndRemoveUntil(
                        context, HomeScreen.routeName, (route) => false);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: const Size(250, 60),
                    padding: const EdgeInsets.only(left: 20, right: 7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(width: 10),
                      TextBody(
                        text: "Get Started",
                        textAlign: TextAlign.center,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        textColor: Colors.black,
                      ),
                      const FloatingActionButton(
                        backgroundColor: Colors.black,
                        onPressed: null,
                        mini: true,
                        child: Icon(Icons.navigate_next_rounded),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
