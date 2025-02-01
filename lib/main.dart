import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uber_clone/core/utils/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
          statusBarColor: Colors.white,
          // Set status bar color to white
          statusBarIconBrightness: Brightness.dark,
          // Set icon brightness to dark for visibility
        ),
      );
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}

