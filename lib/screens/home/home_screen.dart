import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:shoppix/constants.dart';
import 'package:shoppix/models/category_class.dart';
import 'package:shoppix/models/product_model.dart';
import 'package:shoppix/screens/Home/home_screen.dart';
import 'package:shoppix/screens/home/Widget/category.dart';
import 'package:shoppix/screens/home/Widget/home_app_bar.dart';
import 'package:shoppix/screens/home/Widget/image_slider.dart';
import 'package:shoppix/screens/home/Widget/product_cart.dart';
import 'package:shoppix/screens/home/Widget/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlider = 0;
  int selectedIndex= 0;
  @override
  Widget build(BuildContext context) {

    List<List<Product>> selectedCategories = [all,shoes,beauty,womenFashion,jewelry,menFashion];
    return Scaffold(
      //backgroundColor: Colors.white60,
      backgroundColor: Colors.grey[200],
      //backgroundColor: Colors.lightBlue,

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 35,
              ),
              const CustomAppBar(),
              const SizedBox(
                height: 20,
              ),
              const MySearchBar(),
              const SizedBox(
                height: 20,
              ),
              ImageSlider(
                currentSlider: currentSlider,
                onChange: (value) {
                  // handle change
                  setState(() {
                    currentSlider = value;
                  });
                },
                //set the initial slider index
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                color: selectedIndex==index? Colors.blue[200] : Colors.transparent
                ),
                child: Column(
                  children: [
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                                categories[index].image,
                              ),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      categories[index].title,
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            );
          },
          // separatorBuilder: (context, index) {
          //   return SizedBox(
          //     width: 22,
          //   );
          // }
          ),
    ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Special For You",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                        color: Colors.black),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              GridView.builder(
                
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.78,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      crossAxisCount:2),
                      itemCount: selectedCategories[selectedIndex].length,
                  itemBuilder: (context,index){
                    return  ProductCart(product: selectedCategories[selectedIndex][index]);

                  })
            ],
          ),
        ),
      ),
    );
  }
}
