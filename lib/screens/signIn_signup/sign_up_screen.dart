import 'package:flutter/material.dart';
import 'package:shoppix/screens/home/home_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFDFD),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ListView(
          children: [
            const SizedBox(height: 80),
            Center(
              child: Image.network(
                "https://cdn-icons-png.flaticon.com/512/590/590685.png",
                height: 50,
              ),
            ),
            const SizedBox(height: 40),
            const Text("Sign Up", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            const Text("Enter your credentials to continue", style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 25),
            const TextField(decoration: InputDecoration(labelText: "Username")),
            const SizedBox(height: 15),
            const TextField(decoration: InputDecoration(labelText: "Email")),
            const SizedBox(height: 15),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                suffixIcon: Icon(Icons.visibility_off),
              ),
            ),
            const SizedBox(height: 10),
            const Text.rich(
              TextSpan(
                text: 'By continuing you agree to our ',
                style: TextStyle(color: Colors.grey),
                children: [
                  TextSpan(text: 'Terms of Service ', style: TextStyle(color: Colors.green)),
                  TextSpan(text: 'and '),
                  TextSpan(text: 'Privacy Policy.', style: TextStyle(color: Colors.green)),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
           ElevatedButton(
  onPressed: () {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const HomeScreen()),
    );
  },
  child: const Text('Sign Up'),
),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?"),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signin');
                  },
                  child: const Text("Sign in", style: TextStyle(color: Colors.green)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
