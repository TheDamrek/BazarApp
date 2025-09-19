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
              'Create your account and join the adventure!',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),  
              
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Your name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: Colors.black,
                    width: 1,
                  ),
                ),

              ),
            ),
             
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Your email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
              ),
            ),
             
            const SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Your password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
                suffixIcon: Icon( Icons.visibility_off, color: Colors.grey)
              ),
            ),


            const SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Confirm your password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
                suffixIcon: Icon( Icons.visibility_off, color: Colors.grey)
              ),
            ),
            
            const SizedBox(height: 60),
SizedBox(
  width: double.infinity,
  child: ElevatedButton(
    onPressed: () {
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.deepPurple,
      padding: const EdgeInsets.symmetric(vertical: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
    child: const Text(
      "Register",
      style: TextStyle(color: Colors.white,fontSize: 18, fontWeight: FontWeight.bold),
    ),
  ),
),
const SizedBox(height: 10),
const Center(
  child: Text(
    "Already have an account?",
    style: TextStyle(fontSize: 16, color: Colors.grey),
  ),
),
const SizedBox(height: 5),
Center(
  child: GestureDetector(
    onTap: () { 
    },
    child: const Text(
      "Sign in",
      style: TextStyle(
        fontSize: 16,
        color: Colors.deepPurple,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
),
const SizedBox(height: 48),
const Center(
  child: Text(
    "By clicking register, you agree to our",
    style: TextStyle(fontSize: 12, color: Colors.grey),
  ),
),
const SizedBox(height: 5),
Center(
  child: GestureDetector(
    onTap: () { 
    },
    child: const Text(
      "Terms and Data Policy.",
      style: TextStyle(
        fontSize: 12,
        color: Colors.deepPurple,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
),
          ],
        ),
      ),
    );
  }
}
