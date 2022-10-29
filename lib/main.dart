import 'dart:async';
import 'package:flutter/material.dart';
import 'package:foody/Screens/Discover_place.dart';
import 'package:foody/screens/sign_in_page.dart';
import 'package:foody/screens/staring_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.red,
          primaryColorLight: Colors.white,
          appBarTheme:
              const AppBarTheme(titleTextStyle: TextStyle(color: Colors.red))

          // primaryTextTheme: ?Colors.white
          ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  SplashScreen createState() => SplashScreen();
}

class SplashScreen extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        (() => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => StratingPage()),
            (route) => false)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: const Color.fromARGB(255, 245, 44, 68),
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: 120,
                child: Image.asset(
                  'images/th.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Foody",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
