import 'package:buddee_app_premium/constants/colors.dart';
import 'package:buddee_app_premium/constants/icons.dart';
import 'package:buddee_app_premium/constants/strings_constants.dart';
import 'package:buddee_app_premium/constants/styles.dart';
import 'package:flutter/material.dart';

class AddHobbyNextStepScreen extends StatefulWidget {
  const AddHobbyNextStepScreen({Key? key}) : super(key: key);

  @override
  State<AddHobbyNextStepScreen> createState() => _AddHobbyNextStepScreenState();
}

class _AddHobbyNextStepScreenState extends State<AddHobbyNextStepScreen> {
  int _currentindex = 0;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentindex,
            onTap: (index) => setState(() => _currentindex = index),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                label: StringConstants.direction,
                icon: Icon(IconsConstants.direction),
              ),
              BottomNavigationBarItem(
                label: StringConstants.like,
                icon: Icon(IconsConstants.like),
              ),
              BottomNavigationBarItem(
                label: StringConstants.message,
                icon: Icon(IconsConstants.message),
              ),
              BottomNavigationBarItem(
                label: StringConstants.profile,
                icon: Icon(IconsConstants.profile),
              ),
            ],
            selectedItemColor: ColorsConstants.antiClick,
            unselectedItemColor: ColorsConstants.mistBlueYourAccount,
            iconSize: 30,
            elevation: 5),
        body: Padding(
          padding: const EdgeInsets.only(left: 25.06, top: 47.07, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/icon.png',
              ),
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
              const SizedBox(
                height: 36,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  StringConstants.youHave,
                  style: MediumAppStyles.mediumText(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: ColorsConstants.blueZodiacHello),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Container(
                    height: 32,
                    width: 152,
                    decoration: BoxDecoration(
                      color: ColorsConstants.celeste,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        StringConstants.badminton,
                        style: SemiBoldAppStyle.semiBoldText(
                            fontWeight: FontWeight.w600,
                            color: ColorsConstants.blueZodiacHello,
                            fontSize: 16),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Image.asset(
                    'assets/write.png',
                    width: 30,
                  ),
                  Image.asset('assets/cross.png'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                StringConstants.intermediateLevel,
                style: RegularAppStyles.regularText(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: ColorsConstants.blueZodiacHello),
              ),
              const SizedBox(
                height: 146,
              ),
              Container(
                height: 58,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(color: ColorsConstants.blueJay),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    StringConstants.addNewHobby,
                    style: SemiBoldAppStyle.semiBoldText(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: ColorsConstants.blueJay),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                height: 58,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(color: ColorsConstants.antiClick),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    StringConstants.nextStep,
                    style: SemiBoldAppStyle.semiBoldText(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: ColorsConstants.antiClick),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
