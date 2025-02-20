import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  final Function (int)  onChange;
  final int currentSlider;
  const ImageSlider({super.key, required this.onChange, required this.currentSlider});

  @override
  Widget build(BuildContext context) {
    return Stack(
      
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height*0.24,
          width: double.infinity,

          child: ClipRRect(
            
              borderRadius: BorderRadius.circular(15),
              
                child: PageView(
                  
                  scrollDirection: Axis.horizontal,
                  allowImplicitScrolling: true,
                  onPageChanged: onChange,
                  physics: ClampingScrollPhysics(),
                  children: [
                    Image.asset(
                      "images/shopping6.webp",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "images/slider2.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "images/shopping 4.png",
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ),
        ),
        Positioned.fill(
          bottom: 10,
          child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: 
            List.generate(3,(index){
              return  AnimatedContainer(duration: Duration(microseconds: 300),
              width: currentSlider ==index? 15:8,height: 8,
              margin: EdgeInsets.only(right: 3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: currentSlider==index? Colors.black : Colors.transparent,
                border: Border.all(color: Colors.black)
              ),
              );
            })
            ),
        ))
      ],
    );
  }
}
