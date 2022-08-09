import 'package:buddee_app_premium/modules/checkout_options/add_hobbies/choose_plan_screen.dart';
import 'package:buddee_app_premium/modules/liked_in_premium/add_hobbies.dart';
import 'package:buddee_app_premium/modules/checkout_options/add_hobbies/congratulation_screen.dart';
import 'package:buddee_app_premium/modules/login/add_hobbies/add_hobbies_3hobbies.dart';
import 'package:buddee_app_premium/modules/login/add_hobbies/add_hobbies_new.dart';
import 'package:buddee_app_premium/modules/login/on_boarding/on_boarding_screen.dart';
import 'package:buddee_app_premium/modules/profile/add_hobbies/add_3hobbies_profile.dart';
import 'package:buddee_app_premium/modules/profile/add_hobbies/add_hobbies_profile.dart';
import 'package:buddee_app_premium/modules/profile/add_hobbies/photography_hobbies.dart';
import 'package:buddee_app_premium/modules/profile/add_hobbies/search_hobbies.dart';
import 'package:buddee_app_premium/modules/profile/information/information_screen.dart';
import 'package:buddee_app_premium/modules/profile/profile_main/profile_main_my_profile.dart';
import 'package:buddee_app_premium/routes/routes.dart';
import 'package:flutter/material.dart';

import 'modules/chat_screens/messages_screen.dart';
import 'modules/checkout_options/add_hobbies/payment_screen.dart';
import 'modules/profile/privacy_policy/privacy_policy_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
       home: OnBoardingScreen(),
      // home: ProfileMainMyProfile() ,
      //home: InformationScreen(),
      // home: AddHobbiesProfile(),
      // home: SearchSettingScreen(),
      // home:  SearchHobbies(),
      // home: PhotographyHobbies(),
      // home: Add3HobbiesProfile(),
      // home: PrivacyPolicyScreen(),
      // home:  AddHobbies(),
      // home: ChoosePlanScreen(),
      // home:  PaymentScreen(),
      // home: CongratulationScreen(),
      // home: MessagesScreen(),
    );
  }
}
