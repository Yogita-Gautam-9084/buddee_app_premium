import 'package:buddee_app_premium/modules/login/add_hobbies_save_screen.dart';
import 'package:buddee_app_premium/modules/login/add_hobbies_screen.dart';
import 'package:buddee_app_premium/modules/login/add_hobbies_surfing.dart';
import 'package:buddee_app_premium/modules/login/add_hobby_next_step-screen.dart';
import 'package:buddee_app_premium/modules/login/on_boarding_screen.dart';
import 'package:buddee_app_premium/modules/login/sign_in.dart';
import 'package:buddee_app_premium/modules/login/sign_up_about_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
      // home: const SignUpAboutScreen(),
    // home: const AddHobbiesScreen(),
    //   home: const AddHobbiesSaveScreen(),
    //   home: const AddHobbyNextStepScreen(),
    //   home: const AddHobbiesSurfing(),
    );
  }
}




