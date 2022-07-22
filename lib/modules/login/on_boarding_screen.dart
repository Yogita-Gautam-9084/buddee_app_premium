import 'package:buddee_app_premium/constants/colors.dart';
import 'package:buddee_app_premium/constants/images.dart';
import 'package:buddee_app_premium/constants/strings_constants.dart';
import 'package:buddee_app_premium/constants/styles.dart';
import 'package:buddee_app_premium/modules/login/sign_in.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                AppImages.background,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Positioned(
                top: 210,
                left: 12,
                child: Image.asset(AppImages.buddee),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            StringConstants.findYourHobby,
            style: MediumAppStyles.mediumText(fontSize: 20),
          ),
          const SizedBox(
            height: 29,
          ),
          Container(
            width: 311,
            height: 58,
            decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  ColorsConstants.antiClick,
                  ColorsConstants.cantaloupeButtonColor
                ], end: Alignment.topLeft, begin: Alignment.topRight),
                borderRadius: BorderRadius.circular(40)),
            child: Center(
              child: Text(StringConstants.createAccount,
                  style: SemiBoldAppStyle.semiBoldText(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: ColorsConstants.whiteCreateAccount)),
            ),
          ),
          const SizedBox(
            height: 29.5,
          ),
          InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SignInScreen()));
              },
              child: Text(
                StringConstants.signIn,
                style: SemiBoldAppStyle.semiBoldText(fontSize: 20),
              )),
        ],
      ),
    );
  }
}
