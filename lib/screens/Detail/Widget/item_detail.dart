import 'package:flutter/material.dart';
import 'package:shoppix/constants.dart';
import 'package:shoppix/models/product_model.dart';

class ItemDetail extends StatelessWidget {
  final Product product;
  const ItemDetail({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.title,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\$${product.price}",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 55,
                      height: 25,
                      decoration: BoxDecoration(
                          color: kprimaryColor,
                          borderRadius: BorderRadius.circular(15)),
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 15,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            product.rate.toString(),
                            style: TextStyle(
                              color: Colors.white,
                                fontSize: 14, fontWeight: FontWeight.bold,),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text(product.review,style: TextStyle(fontSize: 15,color: Colors.grey),)
                  ],
                )
              ],
            ),

            Spacer(),
            Text.rich(TextSpan(children: [
              TextSpan(text: "Seller: ",style: TextStyle(fontSize: 16),
              
              ),
              TextSpan(text: product.seller,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold))
              
            ])),
           
          ],
        )
      ],
    );
  }
}
