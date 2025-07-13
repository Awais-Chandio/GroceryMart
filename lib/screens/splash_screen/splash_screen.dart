import 'package:flutter/material.dart';
import 'package:shoppix/screens/Get_started/get_started_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const GetStartedScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF53B175),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image(
              image: NetworkImage('https://cdn-icons-png.flaticon.com/512/590/590685.png'), // 🥕 Carrot
              width: 60,
              height: 60,
            ),
            SizedBox(height: 12),
            Text(
              'nectar',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'online groceries',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            )
          ],
        ),
      ),
    );
  }
}
