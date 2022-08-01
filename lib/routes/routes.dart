import 'package:buddee_app_premium/modules/login/add_hobbies/add_hobbies_new.dart';
import 'package:buddee_app_premium/modules/login/add_hobbies/add_hobbies_next_step-screen.dart';
import 'package:buddee_app_premium/modules/login/add_hobbies/add_hobbies_save_screen.dart';
import 'package:buddee_app_premium/modules/login/add_hobbies/add_hobbies_surfing.dart';
import 'package:buddee_app_premium/modules/login/on_boarding/on_boarding_screen.dart';
import 'package:buddee_app_premium/modules/login/sign_in/sign_in.dart';
import 'package:flutter/material.dart';

import '../modules/login/add_hobbies/add_hobbies_3hobbies.dart';
import '../modules/login/add_hobbies/add_hobbies_add_photos.dart';
import '../modules/login/add_hobbies/add_hobbies_add_photo.dart';
import '../modules/login/add_hobbies/add_hobbies_screen.dart';
import '../modules/login/sign_up/sign_up_about_screen.dart';
class RouteGenerator{

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case '/SignInScreen':
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case '/SignUpAboutScreen':
        return MaterialPageRoute(builder: (_) => const SignUpAboutScreen());
      case '/AddHobbiesScreen':
        return MaterialPageRoute(builder: (_) => const AddHobbiesScreen());
      case '/AddHobbiesSaveScreen':
        return MaterialPageRoute(builder: (_) => const AddHobbiesSaveScreen());
      case '/AddHobbiesNextStepScreen':
        return MaterialPageRoute(builder: (_) => const AddHobbiesNextStepScreen());
      case '/AddHobbiesSurfing':
        return MaterialPageRoute(builder: (_) => const AddHobbiesSurfing());
      case '/AddHobbiesNew':
        return MaterialPageRoute(builder: (_) => const AddHobbiesNew());
      case '/AddHobbies3Hobbies':
        return MaterialPageRoute(builder: (_) => const AddHobbies3Hobbies());
      case '/AddHobbiesAddPhotos':
        return MaterialPageRoute(builder: (_) => const AddHobbiesAddPhotos());
      case '/AddHobbiesAddPhoto':
        return MaterialPageRoute(builder: (_) => const AddHobbiesAddPhoto());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                  child: Text('No route defined for ${settings.name}')),
            ));
    }
  }
}
