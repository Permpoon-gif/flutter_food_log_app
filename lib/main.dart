import 'package:flutter/material.dart';
import 'package:flutter_food_log_app/views/splash_screen_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://uksvdhtqwzxeiscbahcf.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVrc3ZkaHRxd3p4ZWlzY2JhaGNmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzM3ODgwMzYsImV4cCI6MjA4OTM2NDAzNn0.L6MT816MQLspayADiCiGAgo6w5-gsjJbi03grxucLpU'
  );
  runApp(
    FlutterFoodLogApp()
    );
}

class FlutterFoodLogApp extends StatefulWidget {
  const FlutterFoodLogApp({super.key});

  @override
  State<FlutterFoodLogApp> createState() => _FlutterFoodLogAppState();
}

class _FlutterFoodLogAppState extends State<FlutterFoodLogApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUi(),
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme
        )
      ),
    );
  }
}