import 'package:flutter/material.dart';
import 'package:foody/models/initial_pages_model.dart';
import 'package:foody/screens/choose_page.dart';
import 'package:foody/screens/discover_place.dart';
import 'package:foody/screens/pick_up.dart';

class StratingPage extends StatefulWidget {
  StratingPage({super.key});

  @override
  State<StratingPage> createState() => _StratingPageState();
}

class _StratingPageState extends State<StratingPage> {
  int _currentPage = 0;
  final _pageOption = [
    DicscoverPlace(),
    ChoosePage(),
    PickUp(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
            itemCount: content.length,
            onPageChanged: (int index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) => _pageOption[index]));
  }
}
