import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:foody/menu/home-page.dart';

class Trending extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        elevation: 0,
        title: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
          child: const Text(
            "<Back",
            style: TextStyle(
              fontSize: 18,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Trending",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            height: 1,
            decoration: BoxDecoration(
                // borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  new BoxShadow(color: Colors.grey.shade500, blurRadius: 2),
                ]),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: GridView.count(
                crossAxisCount: 2,
                padding: const EdgeInsets.all(5),
                crossAxisSpacing: 3.0,
                mainAxisSpacing: 0.6,
                childAspectRatio: 0.72,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 10,
                    ),
                    decoration: BoxDecoration(
                        // borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          new BoxShadow(
                              color: Colors.grey.shade300, blurRadius: 2),
                        ]),
                    child: Card(
                      color: Colors.white,
                      elevation: 2,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(3),
                            ),
                            child: Image.asset(
                              "images/chinese.jpg",
                              fit: BoxFit.cover,
                              height: 160,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10, left: 8),
                            child: Text(
                              "Account Credits",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              "korean BBo",
                              style: TextStyle(
                                  color: Colors.grey.shade700, fontSize: 14),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 6),
                            child: Container(
                              height: 30,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  RatingBar.builder(
                                    maxRating: 1,
                                    itemSize: 18,
                                    // itemPadding: EdgeInsets.symmetric(
                                    //     horizontal: 2.0),
                                    itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {},
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Text(
                                      "34.90",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 14),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 10,
                    ),
                    decoration: BoxDecoration(
                        // borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          new BoxShadow(
                              color: Colors.grey.shade300, blurRadius: 2),
                        ]),
                    child: Card(
                      color: Colors.white,
                      elevation: 2,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(3),
                            ),
                            child: Image.asset(
                              "images/sweets.jpg",
                              fit: BoxFit.cover,
                              height: 160,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10, left: 8),
                            child: Text(
                              "Sweets Credits",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              "korean BBo",
                              style: TextStyle(
                                  color: Colors.grey.shade700, fontSize: 14),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 6, right: 6),
                            child: Container(
                              height: 30,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  RatingBar.builder(
                                    maxRating: 1,
                                    itemSize: 18,
                                    // itemPadding: EdgeInsets.symmetric(
                                    //     horizontal: 2.0),
                                    itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {},
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Text(
                                      "94.90",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 14),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
