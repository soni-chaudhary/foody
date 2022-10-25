import 'package:flutter/material.dart';
import 'package:foody/screens/currunt_location.dart';
import 'package:foody/screens/sign_in_page.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        elevation: 1,
        title: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignInpage()));
          },
          child: const Text(
            "< Back",
            style: TextStyle(
                fontSize: 18, color: Colors.red, fontWeight: FontWeight.bold),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 40,
          right: 40,
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40),
              child: const Text(
                "Forgote Password",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 39,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: const Text(
                "Enter your email address below and we'll \nsend you an email with instructions on how to change your Password",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 50,
              ),
              child: const TextField(
                decoration: InputDecoration(
                  labelText: "Enter your email",
                  labelStyle: TextStyle(color: Colors.grey),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(top: 80),
              child: MaterialButton(
                color: Colors.red,
                child: Text(
                  "Sent",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CurruntLocation()));
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
