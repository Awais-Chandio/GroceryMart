import 'package:flutter/material.dart';
import 'package:shoppix/constants.dart';

class Description extends StatelessWidget {
  final String description;
  const Description({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 120,
              height: 40,
              decoration: BoxDecoration(
                  color: kprimaryColor,
                  borderRadius: BorderRadius.circular(20)),
              alignment: Alignment.center,
              child: Text(
                "Description",
                style:
                    TextStyle(fontWeight: FontWeight.bold,fontSize: 16, color: Colors.white),
              ),
            ),
             Text(
                "Specifications",
                style:
                    TextStyle(fontWeight: FontWeight.bold,fontSize: 16, color: Colors.black),
              ),
               Text(
              "Reviews",
                style:
                    TextStyle(fontWeight: FontWeight.bold,fontSize: 16, color: Colors.black),
              ),
          ],
        ),
        SizedBox(height: 20,),
        Text(description,style: TextStyle(fontSize: 16,color: Colors.grey),)
      ],
    );
  }
}
