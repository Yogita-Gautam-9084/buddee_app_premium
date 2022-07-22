import 'package:buddee_app_premium/modules/login/on_boarding_screen.dart';
import 'package:buddee_app_premium/modules/login/sign_in.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const OnBoardingScreen(),
      // home: const SignInScreen(),
    );
  }
}




