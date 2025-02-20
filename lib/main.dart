import'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoppix/Provider/cart_provider.dart';
import 'package:shoppix/Provider/favourite_provider.dart';
import 'package:shoppix/nav_bar_screen.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(MyWidget());
}
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return
    
    MultiProvider(providers: [

      ChangeNotifierProvider(create: (context)=>CartProvider()),
      ChangeNotifierProvider(create: (context)=>FavoriteProvider()),
    ],
    
     child: 
     MaterialApp(

      theme: ThemeData(
        textTheme: GoogleFonts.mulishTextTheme()
      ),
      debugShowCheckedModeBanner: false,
      home: const BottomNavBar(

     )),
    );
  }
}