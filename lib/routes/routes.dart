import 'package:buddee_app_premium/modules/login/add_hobbies/add_hobbies_new.dart';
import 'package:buddee_app_premium/modules/login/add_hobbies/add_hobbies_next_step-screen.dart';
import 'package:buddee_app_premium/modules/login/add_hobbies/add_hobbies_save_screen.dart';
import 'package:buddee_app_premium/modules/login/add_hobbies/add_hobbies_surfing.dart';
import 'package:buddee_app_premium/modules/login/on_boarding/on_boarding_screen.dart';
import 'package:buddee_app_premium/modules/login/sign_in/sign_in.dart';
import 'package:buddee_app_premium/modules/profile/add_hobbies/add_hobbies_search.dart';
import 'package:flutter/material.dart';

import '../modules/chat_screens/messages_screen.dart';
import '../modules/checkout_options/add_hobbies/choose_plan_screen.dart';
import '../modules/checkout_options/add_hobbies/congratulation_screen.dart';
import '../modules/checkout_options/add_hobbies/payment_screen.dart';
import '../modules/liked_in_premium/add_hobbies.dart';
import '../modules/login/add_hobbies/add_hobbies_3hobbies.dart';
import '../modules/login/add_hobbies/add_hobbies_add_photos.dart';
import '../modules/login/add_hobbies/add_hobbies_add_photo.dart';
import '../modules/login/add_hobbies/add_hobbies_screen.dart';
import '../modules/login/sign_up/sign_up_about_screen.dart';
import '../modules/profile/add_hobbies/add_3hobbies_profile.dart';
import '../modules/profile/add_hobbies/add_hobbies_profile.dart';
import '../modules/profile/add_hobbies/photography_hobbies.dart';
import '../modules/profile/information/information_screen.dart';
import '../modules/profile/privacy_policy/privacy_policy_screen.dart';
import '../modules/profile/profile_main/profile_main_my_profile.dart';
import '../modules/profile/search_setting/search_setting_srcreen.dart';

class RouteGenerator {
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
        return MaterialPageRoute(
            builder: (_) => const AddHobbiesNextStepScreen());
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
      case '/ProfileMainMyProfile':
        return MaterialPageRoute(builder: (_) => const ProfileMainMyProfile());
      case '/InformationScreen':
        return MaterialPageRoute(builder: (_) => const InformationScreen());
      case '/AddHobbiesProfile':
        return MaterialPageRoute(builder: (_) => const AddHobbiesProfile());
      case '/SearchSettingScreen':
        return MaterialPageRoute(builder: (_) => const SearchSettingScreen());
      case '/AddHobbiesSearch ':
        return MaterialPageRoute(builder: (_) => const AddHobbiesSearch());
      case '/PhotographyHobbies ':
        return MaterialPageRoute(builder: (_) => const PhotographyHobbies());
      case '/Add3HobbiesProfile':
        return MaterialPageRoute(builder: (_) => const Add3HobbiesProfile());
      case '/PrivacyPolicyScreen':
        return MaterialPageRoute(builder: (_) => const PrivacyPolicyScreen());
      case '/AddHobbies':
        return MaterialPageRoute(builder: (_) => const AddHobbies());
      case '/ChoosePlanScreen':
        return MaterialPageRoute(builder: (_) => const ChoosePlanScreen());
      case '/PaymentScreen':
        return MaterialPageRoute(builder: (_) => const PaymentScreen());
      case '/CongratulationScreen':
        return MaterialPageRoute(builder: (_) => const CongratulationScreen());
      case '/MessagesScreen':
        return MaterialPageRoute(builder: (_) => const MessagesScreen());



      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
