import 'package:counter_tasibh/Screens/splash_screen.dart';
import 'package:counter_tasibh/Screens/counter_provider.dart';
import 'package:counter_tasibh/Screens/dhikr_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => DhikrProvider()),
        ChangeNotifierProvider(create: (context) => CounterProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
      ),
    );
  }
}
