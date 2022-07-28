import 'package:buddee_app_premium/constants/colors.dart';
import 'package:buddee_app_premium/constants/strings_constants.dart';
import 'package:buddee_app_premium/constants/styles.dart';
import 'package:flutter/material.dart';

class AddHobbiesSearchScreen extends StatefulWidget {
  const AddHobbiesSearchScreen({Key? key}) : super(key: key);

  @override
  State<AddHobbiesSearchScreen> createState() => _AddHobbiesSearchScreenState();
}

class _AddHobbiesSearchScreenState extends State<AddHobbiesSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 25.06, vertical: 47.07),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/icon.png'),
              const SizedBox(
                height: 36.07,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  StringConstants.addHobbies,
                  style: MediumAppStyles.mediumText(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: ColorsConstants.blueZodiacHello),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
