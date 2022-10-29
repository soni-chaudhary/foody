import 'package:flutter/material.dart';

class CheckOutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Stack(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            height: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 90, left: 20),
                  child: Text(
                    "<Back",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Text(
                    "Checkout",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 180, left: 15),
            height: MediaQuery.of(context).size.height - 320,
            width: MediaQuery.of(context).size.width - 30,
            child: Card(
              color: Colors.white,
              elevation: 5,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 17, right: 17, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "DELIVERY ADDRESS",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          border: Border.all(
                            width: 1,
                            color: Colors.redAccent,
                          ),
                          borderRadius: BorderRadius.circular(4)),
                      child: ListTile(
                        // contentPadding: EdgeInsets.only(top: 0, bottom: 0),
                        visualDensity:
                            const VisualDensity(horizontal: 0, vertical: -4),

                        title: const Text(
                          'ADDRESS #1',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent,
                            fontSize: 14,
                          ),
                        ),
                        subtitle: const Text(
                          '4904 Golner Rander',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        trailing: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(20)),
                          child: Icon(
                            Icons.done,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    const Text(
                      "PAYMENT METHOD",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          // border: Border.all(
                          //   width: 1,
                          //   color: Colors.redAccent,
                          // ),
                          borderRadius: BorderRadius.circular(4)),
                      child: ListTile(
                        // contentPadding: EdgeInsets.only(top: 0, bottom: 0),
                        // visualDensity:
                        //     const VisualDensity(horizontal: 0, vertical: -4),
                        leading: SizedBox(
                          height: 30,
                          width: 30,
                          child: Image.asset(
                            "images/visa.jpg",
                            fit: BoxFit.cover,
                            height: 30,
                            width: 30,
                          ),
                        ),
                        title: const Text(
                          '**** **** ****5967',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        // trailing: Container(
                        //   height: 20,
                        //   width: 20,
                        //   decoration: BoxDecoration(
                        //       color: Colors.redAccent,
                        //       borderRadius: BorderRadius.circular(20)),
                        //   child: Icon(
                        //     Icons.done,
                        //     color: Colors.white,
                        //     size: 15,
                        //   ),
                        // ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          border: Border.all(
                            width: 1,
                            color: Colors.redAccent,
                          ),
                          borderRadius: BorderRadius.circular(4)),
                      child: ListTile(
                        // contentPadding: EdgeInsets.only(top: 0, bottom: 0),
                        // visualDensity:
                        //     const VisualDensity(horizontal: 0, vertical: -4),
                        leading: SizedBox(
                          height: 30,
                          width: 30,
                          child: Image.asset(
                            "images/pay.jpg",
                            fit: BoxFit.cover,
                            height: 30,
                            width: 30,
                          ),
                        ),
                        title: const Text(
                          'wilson.casper@bernice.info',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        trailing: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(20)),
                          child: Icon(
                            Icons.done,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          // border: Border.all(
                          //   width: 1,
                          //   color: Colors.redAccent,
                          // ),
                          borderRadius: BorderRadius.circular(4)),
                      child: ListTile(
                        // contentPadding: EdgeInsets.only(top: 0, bottom: 0),
                        // visualDensity:
                        //     const VisualDensity(horizontal: 0, vertical: -4),
                        leading: SizedBox(
                          height: 30,
                          width: 40,
                          child: Image.asset(
                            "images/bripto.jpeg",
                            fit: BoxFit.cover,
                            height: 30,
                            width: 30,
                          ),
                        ),
                        title: const Text(
                          '**** **** ****3461',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        // trailing: Container(
                        //   height: 20,
                        //   width: 20,
                        //   decoration: BoxDecoration(
                        //       color: Colors.redAccent,
                        //       borderRadius: BorderRadius.circular(20)),
                        //   child: Icon(
                        //     Icons.done,
                        //     color: Colors.white,
                        //     size: 15,
                        //   ),
                        // ),
                      ),
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    Container(
                      height: 50,
                      width: 400,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          'Payment',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ]),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.fingerprint,
            size: 50,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          'Pay with Touch ID',
          textAlign: TextAlign.center,
          style: TextStyle(
            // fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 15,
          ),
        ),
      ]),
    );
  }
}
