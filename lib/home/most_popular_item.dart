import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:foody/menu/home-page.dart';
import 'package:foody/models/home_card_model.dart';

class MostPopular extends StatelessWidget {
  List<Topimage> bottomImage = [
    Topimage(
        img: "images/burger.jpg",
        name: "Crispy burger",
        rating: 3,
        detains: "tasty yummi",
        totleAmount: 300),
    Topimage(
        img: "images/noodles.jpg",
        name: "noodles",
        rating: 4,
        detains: "tasty yummi",
        totleAmount: 499),
    Topimage(
        img: "images/sweets.jpg",
        name: "sweets",
        rating: 2,
        detains: "tasty yummi",
        totleAmount: 370),
    Topimage(
        img: "images/chinese.jpg",
        name: "chinese",
        rating: 4,
        detains: "tasty yummi",
        totleAmount: 500),
  ];
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 10),
                  child: Text(
                    "Most Popular ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, bottom: 10),
                  child: Text(
                    "20 places",
                    style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 15,
            ),
            decoration: BoxDecoration(
                // borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  new BoxShadow(color: Colors.grey.shade300, blurRadius: 2),
                ]),
            child: Card(
              elevation: 3,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Container(
                color: Colors.white,
                height: 200,
                // color: Colors.cyanAccent,
                width: MediaQuery.of(context).size.width - 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          left: 10, right: 10, top: 15, bottom: 10),
                      height: 90,
                      width: MediaQuery.of(context).size.width - 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(9.0),
                      ),
                      child: CarouselSlider(
                        items: bottomImage
                            .map(
                              (item) => Container(
                                  child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset(
                                  item.img.toString(),
                                  fit: BoxFit.cover,
                                  // width: MediaQuery.of(context).size.width,
                                ),
                              )),
                            )
                            .toList(),
                        options: CarouselOptions(
                          // autoPlay: true,
                          // height: 220,
                          viewportFraction: 0.42,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 15, bottom: 1),
                      child: Text(
                        "Conrad Chicago Restaurant",
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 15, bottom: 2),
                      child: Text(
                        "963 Madyson Drve Suite 678",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 12),
                      ),
                    ),
                    Container(
                      height: 30,
                      margin: const EdgeInsets.only(left: 10, right: 20),
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
                            "Open 8.00 AM",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade500,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 15,
            ),
            decoration: BoxDecoration(
                // borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  new BoxShadow(color: Colors.grey.shade300, blurRadius: 2),
                ]),
            child: Card(
              elevation: 3,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Container(
                color: Colors.white,
                height: 200,
                // color: Colors.cyanAccent,
                width: MediaQuery.of(context).size.width - 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          left: 10, right: 10, top: 15, bottom: 10),
                      height: 90,
                      width: MediaQuery.of(context).size.width - 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(9.0),
                      ),
                      child: CarouselSlider(
                        items: bottomImage
                            .map(
                              (item) => Container(
                                  child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset(
                                  item.img.toString(),
                                  fit: BoxFit.cover,
                                  // width: MediaQuery.of(context).size.width,
                                ),
                              )),
                            )
                            .toList(),
                        options: CarouselOptions(
                          // autoPlay: true,
                          // height: 220,
                          viewportFraction: 0.42,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 15, bottom: 1),
                      child: Text(
                        "Bayfront Catering Restauranr",
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 15, bottom: 2),
                      child: Text(
                        "1000 Drryl Planis Apt. 823",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 12),
                      ),
                    ),
                    Container(
                      height: 30,
                      margin: const EdgeInsets.only(left: 10, right: 20),
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
                            "Open 8.00 AM",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade500,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 15,
            ),
            decoration: BoxDecoration(
                // borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  new BoxShadow(color: Colors.grey.shade300, blurRadius: 2),
                ]),
            child: Card(
              elevation: 3,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Container(
                color: Colors.white,
                height: 200,
                // color: Colors.cyanAccent,
                width: MediaQuery.of(context).size.width - 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          left: 10, right: 10, top: 15, bottom: 10),
                      height: 90,
                      width: MediaQuery.of(context).size.width - 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(9.0),
                      ),
                      child: CarouselSlider(
                        items: bottomImage
                            .map(
                              (item) => Container(
                                  child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset(
                                  item.img.toString(),
                                  fit: BoxFit.cover,
                                  // width: MediaQuery.of(context).size.width,
                                ),
                              )),
                            )
                            .toList(),
                        options: CarouselOptions(
                          // autoPlay: true,
                          // height: 220,
                          viewportFraction: 0.42,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 15, bottom: 1),
                      child: Text(
                        "Nom Wah Nolita",
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 15, bottom: 2),
                      child: Text(
                        "525 Upton Mission",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 12),
                      ),
                    ),
                    Container(
                      height: 30,
                      margin: const EdgeInsets.only(left: 10, right: 20),
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
                            "Open 8.00 AM",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade500,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
