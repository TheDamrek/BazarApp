import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
       padding: const EdgeInsets.all(24.0), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
             const SizedBox(height: 60),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Billabong',
                ),
              ),
            ),
           const SizedBox(height: 10),
            const Text(
              'Create account and choose favorite menu',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),  
              const SizedBox(height: 35),
             const Text(
              'Name',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),  
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Your name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none
                ),
              ),
            ),
             const SizedBox(height: 20),
             const Text(
              'Email',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),  
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Your email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none
                ),
              ),
            ),
             const SizedBox(height: 20),
             const Text(
              'Password',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),  
            const SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Your password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none
                ),
                suffixIcon: Icon( Icons.visibility_off, color: Colors.grey)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
