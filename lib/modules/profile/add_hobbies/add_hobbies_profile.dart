import 'package:buddee_app_premium/constants/colors.dart';
import 'package:buddee_app_premium/constants/icons.dart';
import 'package:buddee_app_premium/constants/strings_constants.dart';
import 'package:buddee_app_premium/constants/styles.dart';
import 'package:flutter/material.dart';

class AddHobbiesProfile extends StatefulWidget {
  const AddHobbiesProfile({Key? key}) : super(key: key);

  @override
  State<AddHobbiesProfile> createState() => _AddHobbiesProfileState();
}

class _AddHobbiesProfileState extends State<AddHobbiesProfile> {
  int _currentindex = 0;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentindex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (index) => setState(() => _currentindex = index),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                label: '',
                icon: Icon(IconsConstants.direction),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Icon(IconsConstants.like),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Icon(IconsConstants.message),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Icon(IconsConstants.profile),
              ),
            ],
            selectedItemColor: ColorsConstants.antiClick,
            unselectedItemColor: ColorsConstants.mistBlueYourAccount,
            iconSize: 30,
            elevation: 5),
        body: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 25.06, vertical: 47.07),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icon.png',
                  ),
                  Text(
                    StringConstants.myProfile,
                    style: MediumAppStyles.mediumText(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: ColorsConstants.blueZodiacHello),
                  )
                ],
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
                    'assets/edit.png',
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
              Center(
                child: Container(
                  height: 58,
                  width: 311,
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
              ),
              const SizedBox(
                height: 24,
              ),
              Center(
                child: Container(
                  height: 58,
                  width: 311,
                  decoration: BoxDecoration(
                    color: ColorsConstants.antiClick,
                    boxShadow: const [
                      BoxShadow(
                        color: ColorsConstants.neonCarrot,
                        blurRadius: 10,
                        offset: Offset(0.0, 2),
                      ),
                    ],
                    gradient: const LinearGradient(colors: [
                      ColorsConstants.antiClick,
                      ColorsConstants.cantaloupeButtonColor
                    ], end: Alignment.topLeft, begin: Alignment.topRight),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).pushNamed('/SearchSettingScreen');
                      },
                      child: Text(
                        StringConstants.save,
                        style: SemiBoldAppStyle.semiBoldText(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: ColorsConstants.whiteCreateAccount),
                      ),
                    ),
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
