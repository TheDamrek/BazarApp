import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'screens/OpeningScreen.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/homepage_screen.dart';
import 'screens/category_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://yryvwzawjbqykwuckpci.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InlyeXZ3emF3amJxeWt3dWNrcGNpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTgyOTQxMzUsImV4cCI6MjA3Mzg3MDEzNX0.64VhZYaRgaPK_L79wJ-uUCklA7e_peTwthiItK_z20k',
  );
  print('Supabase Initialized!!!');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const OpeningScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/homepage': (context) => const HomePageScreen(),
        '/categories': (context) => const CategoryScreen(),
      },
    );
  }
}

