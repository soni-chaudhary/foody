// ignore: file_names
import 'package:flutter/material.dart';
import 'package:foody/screens/choose_page.dart';

class DicscoverPlace extends StatelessWidget {
  const DicscoverPlace({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 30),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChoosePage()));
              },
              child: const Text(
                "Skip»",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 60),
              child: Image.asset(
                "images/address.png",
                fit: BoxFit.cover,
                height: 300,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: const Text(
                "Discover place \n near you",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: const Text(
                "We make it simple to final the food you crave. Enter your address and let us do the rest.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),
            Container(
              height: 8,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
