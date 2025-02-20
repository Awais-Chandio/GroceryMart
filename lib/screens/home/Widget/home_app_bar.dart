import 'package:flutter/material.dart';
import 'package:shoppix/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            style: IconButton.styleFrom(
                backgroundColor: kcontentColor,
                padding: EdgeInsets.all(20)),
            onPressed: () {},
            icon: Image.asset(
              "images/icon.png",
              height: 20,
            )),
             IconButton(
            style: IconButton.styleFrom(
                backgroundColor: kcontentColor,
                padding: EdgeInsets.all(20)),
            onPressed: () {},
            icon: const Icon(
              size: 30,
              Icons.notifications_outlined))
      ],
    );
  }
}
