import 'package:flutter/material.dart';
import 'package:shoppix/constants.dart';
import 'package:shoppix/models/product_model.dart';
import 'package:shoppix/screens/Detail/Widget/addto_cart.dart';
import 'package:shoppix/screens/Detail/Widget/description.dart';
import 'package:shoppix/screens/Detail/Widget/detail_appbar.dart';
import 'package:shoppix/screens/Detail/Widget/image_slider.dart';
import 'package:shoppix/screens/Detail/Widget/item_detail.dart';

class DetailScreen extends StatefulWidget {
  final Product product;
  const DetailScreen({super.key, required this.product});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentImage = 0;
  int currentColor = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: AddtoCart(product: widget.product),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: kcontentColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DetailAppbar(product: widget.product,),
            MyImageSlider(
                image: widget.product.image,
                onChange: (index) {
                  setState(() {
                    currentImage = index;
                  });
                }),
            const SizedBox(
              height: 10,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  return AnimatedContainer(
                    duration: const Duration(microseconds: 300),
                    width: currentImage == index ? 15 : 8,
                    height: 8,
                    margin: const EdgeInsets.only(right: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: currentImage == index
                            ? Colors.black
                            : Colors.transparent,
                        border: Border.all(color: Colors.black)),
                  );
                })),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  )),
              padding:
                  const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ItemDetail(product: widget.product),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Color ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Row(
                    children:
                        List.generate(widget.product.colors.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            currentColor=index;
                          });
                        },
                        child: AnimatedContainer(
                          
                          width: 40,
                          height: 40,
                          duration: const Duration(milliseconds: 300),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: currentColor==index? Colors.white :widget.product.colors[index],
                              border: currentColor == index
                                  ? Border.all(
                                      color: widget.product.colors[index])
                                  : null),
                                  padding: currentColor==index? const EdgeInsets.all(2):null,
                                  margin: const EdgeInsets.only(right: 10),
                                  child: Container(height: 35,width: 35,decoration: BoxDecoration(
                                    color: widget.product.colors[index],
                                    shape: BoxShape.circle
                                  ),),
                        ),
                      );
                    }),
                  ),

                  const SizedBox(height: 25,),
                  Description(description:  widget.product.description,),

                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
