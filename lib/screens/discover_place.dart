// ignore: file_names
import 'package:flutter/material.dart';
import 'package:foody/models/initial_pages_model.dart';
import 'package:foody/screens/choose_page.dart';

class DicscoverPlace extends StatefulWidget {
  const DicscoverPlace({super.key});

  @override
  State<DicscoverPlace> createState() => _DicscoverPlaceState();
}

class _DicscoverPlaceState extends State<DicscoverPlace> {
  int _currentIndex = 0;
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
                  setState(() {});
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
        body: PageView.builder(
            itemCount: content.length,
            onPageChanged: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 60),
                      child: Image.asset(
                        content[index].image.toString(),
                        fit: BoxFit.cover,
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: Text(
                        content[index].title.toString(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Text(
                        content[index].discription.toString(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
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
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          content.length,
                          (index) => Container(
                            height: 8,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: _currentIndex == index
                                    ? Colors.redAccent
                                    : Colors.grey.shade200),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }));
  }
}
