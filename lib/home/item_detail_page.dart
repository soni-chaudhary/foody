import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:foody/home/first_page.dart';

class ItemDetailpage extends StatefulWidget {
  // String images;
  // ItemDetailpage({required this.images});
  @override
  State<ItemDetailpage> createState() => _ItemDetailpageState();
}

class _ItemDetailpageState extends State<ItemDetailpage> {
  List items = [
    "images/intro.jpg",
    "images/shutterstock.jpg",
    "images/yepy.jpg"
  ];
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
                context, MaterialPageRoute(builder: (context) => FirstPage()));
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              "< Back",
              style: TextStyle(
                  fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Conrad Chicago \nRestaurant",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 37,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "963 Madyson Drive Suite",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    SizedBox(
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
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
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "(245 reviews)",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade500,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Delivery",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 16),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text(
                            "Open time",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Free",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade500,
                                fontSize: 14),
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Text(
                            "8:00 AM",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade500,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            Container(
              height: 1,
              color: Colors.grey.shade200,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: SizedBox(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey.shade200,
                            ),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.file_upload_outlined)),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey.shade200,
                            ),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.star_border_outlined)),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey.shade200,
                            ),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.location_on_outlined)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 35,
                      width: 120,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.redAccent),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          "Contact",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent,
                              fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 1,
              color: Colors.grey.shade200,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Text(
                "FEATURED ITEMS",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 15),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: CarouselSlider(
                items: items
                    .map((item) => Container(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                item,
                                fit: BoxFit.cover,
                              )),
                        ))
                    .toList(),
                options: CarouselOptions(
                  height: 200,
                  viewportFraction: 0.8,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Crispy Chicken Sandwich",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "\$25.00",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade500,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 20,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "MANU ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "View all»",
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32,
              child: ListTile(
                  title: const Text(
                    'Popular items',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.grey,
                  ),
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => MostPopular()));
                  }),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 30,
              ),
              height: 1,
              color: Colors.grey.shade200,
            ),
            SizedBox(
              height: 32,
              child: ListTile(
                  title: const Text(
                    'Salads',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.grey,
                  ),
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => MostPopular()));
                  }),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 30,
              ),
              height: 1,
              color: Colors.grey.shade200,
            ),
            SizedBox(
              height: 32,
              child: ListTile(
                  title: const Text(
                    'Chicken',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.grey,
                  ),
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => MostPopular()));
                  }),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 30,
              ),
              height: 1,
              color: Colors.grey.shade200,
            ),
            SizedBox(
              height: 32,
              child: ListTile(
                  title: const Text(
                    'Soups',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.grey,
                  ),
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => MostPopular()));
                  }),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 30,
              ),
              height: 1,
              color: Colors.grey.shade200,
            ),
            SizedBox(
              height: 32,
              child: ListTile(
                  title: const Text(
                    'Vegetables',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.grey,
                  ),
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => MostPopular()));
                  }),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 30,
              ),
              height: 1,
              color: Colors.grey.shade200,
            ),
            SizedBox(
              height: 32,
              child: ListTile(
                  title: const Text(
                    'Noodles',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.grey,
                  ),
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => MostPopular()));
                  }),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 30,
              ),
              height: 1,
              color: Colors.grey.shade200,
            ),
            SizedBox(
              height: 32,
              child: ListTile(
                  title: const Text(
                    'Drink',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.grey,
                  ),
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => MostPopular()));
                  }),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 30,
              ),
              height: 1,
              color: Colors.grey.shade200,
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 10),
              child: Text(
                'REVIEW',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              margin: const EdgeInsets.only(
                                  bottom: 20, top: 20, left: 20),
                              child: CircleAvatar(
                                radius: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    "images/persion.jpg",
                                    fit: BoxFit.cover,
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Ellen Mclaughlin',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '2 hours ago',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ]),
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
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80, right: 20),
                  child: Text(
                    'Some foods just go together. You often can not say one without the other. Many have even become colloquial expressions. As Forrest Gump would say, some things go together like peas and carrots.',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              margin: const EdgeInsets.only(
                                  bottom: 20, top: 20, left: 20),
                              child: CircleAvatar(
                                radius: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    "images/persion.jpg",
                                    fit: BoxFit.cover,
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Vincent King',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '1 day ago',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ]),
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
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80, right: 20),
                  child: Text(
                    'Some foods just go together. You often can not say one without the other. Many have even become colloquial expressions. As Forrest Gump would say, some things go together like peas and carrots.',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
