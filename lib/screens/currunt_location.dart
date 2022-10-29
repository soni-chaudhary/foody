import 'package:flutter/material.dart';
import 'package:foody/screens/choose_country.dart';
import 'package:foody/screens/varify_otp.dart';

class CurruntLocation extends StatelessWidget {
  const CurruntLocation({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40, top: 50),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 60),
                child: Image.asset(
                  "images/location.jpg",
                  fit: BoxFit.cover,
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: const Text(
                  "Hi, nice to meet you!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Text(
                  "Choose your location to start find \n restaurant around you",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey.shade500,
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
                  child: Text(
                    "Use current location",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChooseCountry()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0),
                      side: const BorderSide(color: Colors.red)),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 30),
                child: InkWell(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => const VerifyOTPPage(),
                    //     ));
                  },
                  child: const Text(
                    "Select it manually",
                    style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                        // fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 90,
              // ),
              // Container(
              //   height: 8,
              //   width: 150,
              //   decoration: BoxDecoration(
              //     color: Colors.black,
              //     borderRadius: BorderRadius.circular(20),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
