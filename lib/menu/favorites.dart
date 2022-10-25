import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FavoritesPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.grey.shade200,
      //   automaticallyImplyLeading: false,
      // ),
      // backgroundColor: Colors.pink.shade300,
      body: Column(
        children: [
          Container(
            height: 130,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 75),
              child: Text(
                "Favorites",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            height: 1,
            color: Colors.grey.shade300,
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(5),
              crossAxisSpacing: 2.0,
              mainAxisSpacing: 0.4,
              childAspectRatio: 0.77,
              children: [
                Card(
                  color: Colors.white,
                  elevation: 5,
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
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          "korean BBo",
                          style: TextStyle(
                              color: Colors.grey.shade700, fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6),
                        child: Container(
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RatingBar.builder(
                                maxRating: 1,
                                itemSize: 20,
                                // itemPadding: EdgeInsets.symmetric(
                                //     horizontal: 2.0),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {},
                              ),
                              Text(
                                "34.90",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,
                  elevation: 5,
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
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          "korean BBo",
                          style: TextStyle(
                              color: Colors.grey.shade700, fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6),
                        child: Container(
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RatingBar.builder(
                                maxRating: 1,
                                itemSize: 20,
                                // itemPadding: EdgeInsets.symmetric(
                                //     horizontal: 2.0),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {},
                              ),
                              Text(
                                "94.90",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
