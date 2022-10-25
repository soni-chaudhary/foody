import 'package:flutter/material.dart';
import 'package:foody/screens/sign_in_page.dart';

class PickUp extends StatelessWidget {
  const PickUp({super.key});
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
                        builder: (context) => const SignInpage()));
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
                "images/delivery.jpg",
                fit: BoxFit.cover,
                height: 300,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: const Text(
                "Pick Up Or \n Delivery",
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
                "We make food ordering fast,simple and free - no matter if you order online or cash",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width - 150,
              margin: const EdgeInsets.only(top: 50),
              child: MaterialButton(
                color: Colors.red,
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInpage()));
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                ),
              ),
            ),
            SizedBox(
              height: 50,
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
