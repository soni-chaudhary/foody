import 'package:flutter/material.dart';
import 'package:foody/home/add_to_order.dart';
import 'package:foody/home/checkout.dart';
import 'package:foody/home/most_popular_item.dart';
import 'package:foody/home/order_page.dart';

class FilterPages extends StatefulWidget {
  @override
  State<FilterPages> createState() => _FilterPagesState();
}

class Category {
  late String categoryText;
  Category({required this.categoryText});
}

class _FilterPagesState extends State<FilterPages> {
  // final List<Category> cateories = [
  //   Category(categoryText: "Top Rated"),
  //   Category(categoryText: "Nearest Me"),
  //   Category(categoryText: "Cost Hight to Low"),
  //   Category(categoryText: "Cost Low to Hight"),
  //   Category(categoryText: "Most Popular"),
  // ];
  // final List<Category> filter = [
  //   Category(categoryText: "Open New"),
  //   Category(categoryText: "Credit Card"),
  //   Category(categoryText: "Alcohol Served"),
  // ];
  // bool? _val = false;
  static double _lowerValue = 1.0;
  static double _upperValue = 10.0;
  RangeValues values = RangeValues(_lowerValue, _upperValue);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(top: 35, right: 20),
          child: Text(
            "Filter",
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 37, right: 30),
            child: InkWell(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => FilterPages(),
                //     ));
              },
              child: const Text(
                "clear",
                style: TextStyle(color: Colors.redAccent, fontSize: 19),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            color: Colors.grey.shade200,
          ),
          Text_heading(text: "SORT BY"),
          const SizedBox(
            height: 32,
            child: ListTile(
              title: Text(
                'Top Rated',
                style: TextStyle(
                  color: Colors.redAccent,
                ),
              ),
              trailing: Icon(
                Icons.done,
                color: Colors.redAccent,
              ),
              // onTap: () {
              //   Navigator.push(context,
              //       MaterialPageRoute(builder: (context) => Trending()));
              // }
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 20,
            ),
            height: 1,
            color: Colors.grey.shade200,
          ),
          const SizedBox(
            height: 32,
            child: ListTile(
              title: const Text(
                'Nearest Me',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              // onTap: () {

              // }
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 20,
            ),
            height: 1,
            color: Colors.grey.shade200,
          ),
          const SizedBox(
            height: 32,
            child: ListTile(
              title: Text(
                'Cost Hight to Low',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              // onTap: () {
              //   Navigator.push(context,
              //       MaterialPageRoute(builder: (context) => Trending()));
              // }
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 20,
            ),
            height: 1,
            color: Colors.grey.shade200,
          ),
          SizedBox(
            height: 32,
            child: ListTile(
                title: const Text(
                  'Cost Low to Hight',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddToOrder()));
                }),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 20,
            ),
            height: 1,
            color: Colors.grey.shade200,
          ),
          SizedBox(
            height: 32,
            child: ListTile(
                title: const Text(
                  'Most Popular',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MostPopular()));
                }),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 20,
            ),
            height: 1,
            color: Colors.grey.shade200,
          ),
          SizedBox(
            height: 10,
          ),
          Text_heading(text: "FILTER"),
          const SizedBox(
            height: 32,
            child: ListTile(
              title: Text(
                'Open Now',
                style: TextStyle(
                  color: Colors.redAccent,
                ),
              ),
              trailing: Icon(
                Icons.done,
                color: Colors.redAccent,
              ),
              // onTap: () {
              //   Navigator.push(context,
              //       MaterialPageRoute(builder: (context) => Trending()));
              // }
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 20,
            ),
            height: 1,
            color: Colors.grey.shade200,
          ),
          const SizedBox(
            height: 32,
            child: ListTile(
              title: Text(
                'Credit Cards',
                style: TextStyle(
                  color: Colors.redAccent,
                ),
              ),
              trailing: Icon(
                Icons.done,
                color: Colors.redAccent,
              ),
              // onTap: () {
              //   Navigator.push(context,
              //       MaterialPageRoute(builder: (context) => Trending()));
              // }
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 20,
            ),
            height: 1,
            color: Colors.grey.shade200,
          ),
          SizedBox(
            height: 32,
            child: ListTile(
                title: Text(
                  'Alcohol Served',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OrderPage()));
                }),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 20,
            ),
            height: 1,
            color: Colors.grey.shade200,
          ),
          Text_heading(text: "ADDITIONAL FILTER"),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 20),
            child: RangeSlider(
                max: _upperValue,
                min: _lowerValue,
                values: values,
                onChanged: (vals) {
                  setState(() {
                    values = vals;
                  });
                }),
          )
        ],
      ),
      bottomNavigationBar: MaterialButton(
        color: Colors.redAccent,
        onPressed: () {},
        child: Container(
          height: 80,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 30, top: 15),
                child: Text(
                  "Apply",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 5,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class ListDecoration extends StatelessWidget {
//   final text;
//   const ListDecoration({Key? key, @required this.text}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//         title: Text(
//           text,
//           style: TextStyle(color: Colors.redAccent),
//         ),
//         trailing: Icon(
//           Icons.done,
//           color: Colors.redAccent,
//         ),
//         onTap: () {
//           Navigator.push(
//               context, MaterialPageRoute(builder: (context) => MostPopular()));
//         });
//   }
// }

class Text_heading extends StatelessWidget {
  const Text_heading({
    @required this.text,
  });
  final text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
      ),
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
      ),
    );
  }
}
