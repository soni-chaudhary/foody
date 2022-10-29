import 'package:flutter/material.dart';

class AddToOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  "images/chinese.jpg",
                  fit: BoxFit.cover,
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, top: 40, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "< Back",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: const Icon(
                                Icons.file_upload_outlined,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: const Icon(
                                Icons.star,
                                color: Colors.redAccent,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "California Roll With \nBlack Sesame",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'DISCRIPTION',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  const Text(
                    'Some foods just go together. You often can not say one without the other. Many have even become colloquial expressions. As Forrest Gump would say, some things go together like peas and carrots.',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  const Text(
                    'EXTRAS',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  const ListTile(
                    contentPadding: EdgeInsets.only(left: 0, right: 20),
                    title: Text(
                      '\$35.00',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    leading: Text(
                      'Tuna',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    trailing: Icon(
                      Icons.done,
                      color: Colors.redAccent,
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey.shade200,
                  ),
                  const ListTile(
                    contentPadding: EdgeInsets.only(left: 0, right: 20),
                    title: Text(
                      '\$20.00',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    leading: Text(
                      'Salmon',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    trailing: Icon(
                      Icons.done,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey.shade200,
                  ),
                  const ListTile(
                    contentPadding: EdgeInsets.only(left: 0, right: 20),
                    title: Text(
                      '+\$25.00',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    leading: Text(
                      'Wasabi',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    trailing: Icon(
                      Icons.done,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey.shade200,
                  ),
                  const ListTile(
                    contentPadding: EdgeInsets.only(left: 0, right: 20),
                    title: Text(
                      '+\$10.00',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    leading: Text(
                      'Unagi',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    trailing: Icon(
                      Icons.done,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey.shade200,
                  ),
                  const ListTile(
                    contentPadding: EdgeInsets.only(left: 0, right: 20),
                    title: Text(
                      '+\$5.00',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    leading: Text(
                      'Vegetable',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    trailing: Icon(
                      Icons.done,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey.shade200,
                  ),
                  const ListTile(
                    contentPadding: EdgeInsets.only(left: 0, right: 20),
                    title: Text(
                      '\$30.00',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    leading: Text(
                      'Noodles',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    trailing: Icon(
                      Icons.done,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey.shade200,
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  const Text(
                    'QUNATITY',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '1 Item',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40),
                            border:
                                Border.all(width: 2, color: Colors.redAccent)),
                        child: Row(
                          children: [
                            Container(
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.redAccent,
                                    ))),
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(50),
                                    bottomRight: Radius.circular(50)),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => CheckOutPage(),
                      //     ),
                      //     );
                    },
                    child: Container(
                      height: 50,
                      width: 360,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 130),
                            child: Text(
                              'Add to order',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          SizedBox(
                              // width: 60,
                              ),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text(
                              '\$32.98',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
