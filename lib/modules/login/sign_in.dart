import 'package:buddee_app_premium/constants/colors.dart';
import 'package:buddee_app_premium/constants/icons.dart';
import 'package:buddee_app_premium/constants/strings_constants.dart';
import 'package:buddee_app_premium/constants/styles.dart';
import 'package:buddee_app_premium/modules/login/sign_up_about_screen.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

import '../webview/webview_facebook.dart';
import '../webview/webview_google.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 32.06, top: 45.07, right: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: Icon(IconsConstants.arrow),
                ),
                const SizedBox(
                  height: 25.07,
                ),
                Text(
                  StringConstants.helloAgain,
                  style: MediumAppStyles.mediumText(
                      fontSize: 40, color: ColorsConstants.blueZodiacHello),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  StringConstants.signInAccount,
                  style: RegularAppStyles.regularText(
                      color: ColorsConstants.mistBlueYourAccount, fontSize: 16),
                ),
                const SizedBox(
                  height: 34,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(StringConstants.emailAddress,
                      style: RegularAppStyles.regularText(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: ColorsConstants.blueZodiacHello,
                      )),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintStyle: RegularAppStyles.regularText(
                        color: ColorsConstants.quillGreyProfile,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    hintText: StringConstants.enterEmail,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 21,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    StringConstants.password,
                    style: RegularAppStyles.regularText(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: ColorsConstants.blueZodiacHello,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintStyle: RegularAppStyles.regularText(
                        color: ColorsConstants.quillGreyProfile,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    hintText: StringConstants.enterPassword,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    StringConstants.forgotPassword,
                    style: RegularAppStyles.regularText(
                      isUnderline: true,
                      fontWeight: FontWeight.w400,
                      color: ColorsConstants.mistBlueYourAccount,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 38,
                ),
                Container(
                  width: 311,
                  height: 58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    gradient: const LinearGradient(colors: [
                      ColorsConstants.antiClick,
                      ColorsConstants.cantaloupeButtonColor
                    ], end: Alignment.topLeft, begin: Alignment.bottomRight),
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SignUpAboutScreen()));
                      },
                      child: Text(StringConstants.signIn,
                          style: SemiBoldAppStyle.semiBoldText(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: ColorsConstants.whiteCreateAccount)),
                    ),
                  ),
                ),
                const SizedBox(height: 29),
                Row(
                  children: [
                    const DottedLine(
                      direction: Axis.horizontal,
                      lineLength: 128,
                      lineThickness: 1.0,
                      dashLength: 4.0,
                      dashColor: ColorsConstants.starDustWith,
                      dashGapLength: 4.0,
                      dashGapColor: Colors.transparent,
                    ),
                    Text(
                      StringConstants.orWith,
                      style: MediumAppStyles.mediumText(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: ColorsConstants.starDustWith),
                    ),
                    const DottedLine(
                      direction: Axis.horizontal,
                      lineLength: 128,
                      lineThickness: 1.0,
                      dashLength: 4.0,
                      dashColor: ColorsConstants.starDustWith,
                      dashGapLength: 4.0,
                      dashGapColor: Colors.transparent,
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Container(
                  height: 58,
                  width: 310,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: ColorsConstants.blueZodiacHello),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/google.png',
                        height: 24,
                        width: 24,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const WebVeiwGoogle()));
                        },
                        child: Text(
                          StringConstants.signInGoogle,
                          style: MediumAppStyles.mediumText(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: ColorsConstants.blueZodiacHello,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  height: 58,
                  width: 310,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: ColorsConstants.blueZodiacHello),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/facebook.png',
                        height: 24,
                        width: 24,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const WebViewFacebook()));
                        },
                        child: Text(
                          StringConstants.signInFacebook,
                          style: MediumAppStyles.mediumText(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: ColorsConstants.blueZodiacHello),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      StringConstants.dontHaveAccount,
                      style: RegularAppStyles.regularText(
                          fontSize: 12,
                          color: ColorsConstants.mistBlueYourAccount,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      StringConstants.dontHaveActSignUp,
                      style: RegularAppStyles.regularText(
                          fontWeight: FontWeight.w400,
                          color: ColorsConstants.celeste),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
