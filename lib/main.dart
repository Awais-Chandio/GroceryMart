// // import'package:flutter/material.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'package:shoppix/Provider/cart_provider.dart';
// // import 'package:shoppix/Provider/favourite_provider.dart';
// // import 'package:shoppix/nav_bar_screen.dart';
// // import 'package:provider/provider.dart';
// // import 'package:shoppix/screens/splash_screen/splash_screen.dart';
// // void main(){
// //   runApp(MyWidget());
// // }
// // class MyWidget extends StatelessWidget {
// //   const MyWidget({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return
    
// //     MultiProvider(providers: [

// //       ChangeNotifierProvider(create: (context)=>CartProvider()),
// //       ChangeNotifierProvider(create: (context)=>FavoriteProvider()),
// //     ],
    
// //      child: 
// //      MaterialApp(

// //       theme: ThemeData(
// //         textTheme: GoogleFonts.mulishTextTheme()
// //       ),
// //       debugShowCheckedModeBanner: false,
// //       home: const SplashScreen()),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

// import 'package:shoppix/Provider/cart_provider.dart';
// import 'package:shoppix/Provider/favourite_provider.dart';
// import 'package:shoppix/screens/Get_started/get_started_screen.dart';
// import 'package:shoppix/screens/signIn_signup/sign_in_screen.dart';
// import 'package:shoppix/screens/signIn_signup/sign_up_screen.dart';

// import 'package:shoppix/screens/splash_screen/splash_screen.dart';

// void main() {
//   runApp(const MyWidget());
// }

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (context) => CartProvider()),
//         ChangeNotifierProvider(create: (context) => FavoriteProvider()),
//       ],
//       child: MaterialApp(
//         title: 'Shoppix',
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(
//           textTheme: GoogleFonts.mulishTextTheme(),
//         ),
//         // Start with splash screen
//         home: const SplashScreen(),

//         // Named routes
//         routes: {
//           '/get-started': (_) => const GetStartedScreen(),
//           '/signin': (_) => const SignInScreen(),
//           '/signup': (_) => const SignUpScreen(),

//         },
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:shoppix/Provider/cart_provider.dart';
import 'package:shoppix/Provider/favourite_provider.dart';

import 'package:shoppix/screens/Get_started/get_started_screen.dart';
import 'package:shoppix/screens/signIn_signup/sign_in_screen.dart';
import 'package:shoppix/screens/signIn_signup/sign_up_screen.dart';
import 'package:shoppix/screens/splash_screen/splash_screen.dart';
import 'package:shoppix/nav_bar_screen.dart'; // <-- This is important

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartProvider()),
        ChangeNotifierProvider(create: (context) => FavoriteProvider()),
      ],
      child: MaterialApp(
        title: 'Shoppix',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.mulishTextTheme(),
        ),
        // Set SplashScreen as entry point
        home: const SplashScreen(),

        // Routes
        routes: {
          '/get-started': (_) => const GetStartedScreen(),
          '/signin': (_) => const SignInScreen(),
          '/signup': (_) => const SignUpScreen(),
          '': (_) => const BottomNavBar(), // <-- Your main app entry after login/splash
        },
      ),
    );
  }
}
