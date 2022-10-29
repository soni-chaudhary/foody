import 'package:flutter/material.dart';
import 'package:foody/home/first_page.dart';
import 'package:foody/menu/home-page.dart';
import 'package:foody/screens/forgot_password.dart';
import 'package:foody/screens/sign_up.dart';

class SignInpage extends StatefulWidget {
  const SignInpage({super.key});
  @override
  SignInpageState createState() => SignInpageState();
}

class SignInpageState extends State<SignInpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage('images/restorent.jpg'),
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.darken),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 200),
                child: const Text(
                  "Welcome back",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 0, right: 130),
                child: const Text(
                  "Sign in to continue",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 60),
                child: Container(
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: "User name",
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 30),
                child: Container(
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width - 80,
                margin: const EdgeInsets.only(top: 60),
                child: MaterialButton(
                  color: Colors.red,
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FirstPage()));
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width - 80,
                margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 15, 110, 225),
                  borderRadius: BorderRadius.circular(6.0),
                  // border: Border.all(width: 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "images/facebook_magic.png",
                      fit: BoxFit.cover,
                      height: 30,
                      width: 30,
                    ),
                    MaterialButton(
                      child: Text(
                        "Connect with Facebook",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgotPassword()));
                },
                child: const Text(
                  "Forget your password?",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUppage()));
                },
                child: const Text(
                  "Don't have an account? SignUp",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
