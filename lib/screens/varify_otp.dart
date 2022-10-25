import 'package:flutter/material.dart';
import 'package:foody/home/shop_page.dart';
import 'package:foody/menu/home-page.dart';
import 'package:foody/screens/forgot_password.dart';
import 'package:sms_autofill/sms_autofill.dart';

class VerifyOTPPage extends StatefulWidget {
  const VerifyOTPPage({super.key});
  @override
  OTPPageState createState() => OTPPageState();
}

class OTPPageState extends State<VerifyOTPPage> {
  String codeValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ForgotPassword(),
              ),
            );
          },
          child: const Text(
            "<Back",
            style: TextStyle(
              fontSize: 19,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(35.0),
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: const Text(
                  "Verify your Phone number",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                child: const Text(
                  "Enter your OTP code here",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: PinFieldAutoFill(
                  decoration: const UnderlineDecoration(
                    textStyle: TextStyle(fontSize: 20, color: Colors.black),
                    colorBuilder: FixedColorBuilder(Colors.black),
                  ),
                  currentCode: codeValue,
                  codeLength: 4,
                  onCodeChanged: (code) {
                    print("onCodeChanged ${code}");
                    setState(() {
                      codeValue = code.toString();
                    });
                  },
                  onCodeSubmitted: (val) {
                    print("onCodeChanged ${val}");
                  },
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                height: 45,
                width: MediaQuery.of(context).size.width,
                child: MaterialButton(
                  splashColor: Colors.white,
                  color: Colors.red,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ShopPage()));
                  },
                  child: Text(
                    "Verify Now",
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: const BorderSide(color: Colors.red)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
