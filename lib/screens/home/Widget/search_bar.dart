// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:shoppix/constants.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kcontentColor,
        borderRadius: BorderRadius.circular(30)),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Row(
        children: [
          const Icon(
            Icons.search,
            color: Colors.grey,
            size: 30,
          ),
          const SizedBox(
            width: 10,
          ),
          const Flexible(
            flex: 4,
              child: TextField(
            decoration:
                InputDecoration(hintText: "Search", border: InputBorder.none),
          )),
          Container(
            width: 1.5,
            height: 25,
            decoration: BoxDecoration(color: Colors.grey),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.tune,
                color: Colors.grey,
              ))
        ],
      ),
    );
  }
}
