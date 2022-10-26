import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:foody/home/filter_page.dart';
import 'package:foody/menu/favorites.dart';
import 'package:foody/menu/location.dart';
import 'package:foody/menu/perfile.dart';
import 'package:foody/menu/shoping.dart';
import 'package:foody/models/home_card_model.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selected = 0;
  final _pageOption = [
    HomePage(),
    LocationPages(),
    ShopingPages(),
    FavoritesPages(),
    ProfilePages()
  ];
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
        backgroundColor: Colors.redAccent,
        elevation: 0,
        title: const InkWell(
          // onTap: () {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => FilterPages(),
          //     ),
          //   );
          // },
          child: Padding(
            padding: EdgeInsets.only(top: 30, right: 20),
            child: Text(
              "Browse",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 35, right: 30),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FilterPages(),
                    ));
              },
              child: const Text(
                "Filter",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.redAccent,
              height: 80,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 23),
                child: TextField(
                  // onChanged: (as) => _runFielter(as),
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    hintText: "search...",
                    hintStyle: const TextStyle(color: Colors.grey),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      // borderSide: BorderSide(color: Colors.grey.shade200),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 270,
              width: MediaQuery.of(context).size.width - 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Trending this week",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          "View all»",
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // height: 250,
                    // color: Colors.amber,
                    width: MediaQuery.of(context).size.width,
                    child: CarouselSlider(
                      items: bottomImage
                          .map(
                            (item) => Container(
                              // margin: const EdgeInsets.all(5),
                              width: 280,
                              height: 200,
                              decoration: BoxDecoration(
                                // color: Colors.amber,
                                borderRadius: BorderRadius.circular(10.0),
                                // border: Border.all(
                                //     width: 0.5, color: Colors.grey.shade300),
                              ),
                              child: Card(
                                elevation: 5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(5.0),
                                          topRight: Radius.circular(5.0),
                                        ),
                                        child: Image.asset(
                                          item.img.toString(),
                                          fit: BoxFit.cover,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 140,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 15, bottom: 1),
                                      child: Text(
                                        item.name.toString(),
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 15, bottom: 2),
                                      child: Text(
                                        item.detains.toString(),
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                            fontSize: 12),
                                      ),
                                    ),
                                    Container(
                                      height: 30,
                                      margin: const EdgeInsets.only(
                                          left: 10, right: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          RatingBar.builder(
                                            maxRating: 1,
                                            itemSize: 18,
                                            // itemPadding: EdgeInsets.symmetric(
                                            //     horizontal: 2.0),
                                            itemBuilder: (context, _) =>
                                                const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            onRatingUpdate: (rating) {},
                                          ),
                                          Text(
                                            item.totleAmount.toString(),
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                          .toList(),
                      options: CarouselOptions(
                        // autoPlay: true,
                        height: 220,
                        viewportFraction: 0.74,
                        // onPageChanged: (index, reason) {
                        //   setState(() {
                        //     _currentColor = index;
                        //   });
                        // },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, bottom: 10),
              width: MediaQuery.of(context).size.width - 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Most popular",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    "26places»",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 5,
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
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
