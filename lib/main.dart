import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uber_clone/features/auth/presentation/views/login_view.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.@override
    @override
    Widget build(BuildContext context) {
      // Set the system UI overlay style explicitly to ensure the status bar is white
      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarColor: Colors.black,
          // Set status bar color to white
          statusBarIconBrightness: Brightness.dark,
          // Set icon brightness to dark for visibility
        ),
      );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginView(),
    );
  }
}

