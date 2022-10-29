import 'package:flutter/material.dart';

class ProfilePages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        elevation: 0,
        title: InkWell(
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => const ,
            //   ),
            // );
          },
          child: const Padding(
            padding: EdgeInsets.only(top: 30, right: 20),
            child: Text(
              "Profile",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 37, right: 30),
            child: Text(
              "Edit",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                height: 120,
                color: Colors.redAccent,
              ),
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10, top: 40),
                height: 180,
                // color: Colors.white,
                child: Card(
                  color: Colors.white,
                  elevation: 5,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              margin: const EdgeInsets.only(
                                  bottom: 20, top: 20, left: 20),
                              child: CircleAvatar(
                                radius: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    "images/persion.jpg",
                                    fit: BoxFit.cover,
                                    height: 80,
                                    width: 80,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Ricardo McDonald",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Corkey_dakota@gmail.com",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  )
                                ],
                              ),
                            ),
                          ]),
                      Container(
                        height: 1,
                        color: Colors.grey.shade200,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Account Credits",
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 16),
                            ),
                            Text(
                              "\$54.25",
                              style:
                                  TextStyle(color: Colors.orange, fontSize: 25),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 15, right: 15),
              // height: MediaQuery.of(context).size.height - 450,
              width: MediaQuery.of(context).size.width - 30,
              child: Card(
                color: Colors.white,
                elevation: 5,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 17, right: 17, top: 10),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const ListTile(
                          contentPadding: EdgeInsets.only(left: 0, right: 20),
                          title: Text(
                            'Payment Card',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          subtitle: Text(
                            'Add a credit or debit card',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                          ),
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey.shade200,
                        ),
                        const ListTile(
                          contentPadding: EdgeInsets.only(left: 0, right: 20),
                          title: Text(
                            'Address',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          subtitle: Text(
                            'Add or remove a delivery address',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                          ),
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey.shade200,
                        ),
                        const ListTile(
                          contentPadding: EdgeInsets.only(left: 0, right: 20),
                          title: Text(
                            'Refer Friends',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          subtitle: Text(
                            'Get \$10.00 Free',
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                          ),
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey.shade200,
                        ),
                        const ListTile(
                          contentPadding: EdgeInsets.only(left: 0, right: 20),
                          title: Text(
                            'Delivery Support',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          leading: Icon(Icons.delivery_dining),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                          ),
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey.shade200,
                        ),
                        const ListTile(
                          contentPadding: EdgeInsets.only(left: 0, right: 20),
                          title: Text(
                            'Setting',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          leading: Icon(Icons.settings),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                          ),
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey.shade200,
                        ),
                        const ListTile(
                          contentPadding: EdgeInsets.only(left: 0, right: 20),
                          title: Text(
                            'Terms of user',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          leading: Icon(Icons.text_format),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                          ),
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey.shade200,
                        ),
                        const ListTile(
                          contentPadding: EdgeInsets.only(left: 0, right: 20),
                          title: Text(
                            'Privacy Policy',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          leading: Icon(Icons.lock),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                          ),
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey.shade200,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
