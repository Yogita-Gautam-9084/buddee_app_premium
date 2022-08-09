import 'package:buddee_app_premium/constants/colors.dart';
import 'package:buddee_app_premium/constants/strings_constants.dart';
import 'package:buddee_app_premium/constants/styles.dart';
import 'package:flutter/material.dart';

import '../../../constants/icons.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 2,
            ),
          ],
        ),
        child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: _currentindex,
            onTap: (index) => setState(() => _currentindex = index),
            items:  <BottomNavigationBarItem>[
              const BottomNavigationBarItem(
                label: '',
                icon: Icon(IconsConstants.direction),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed('/AddHobbies');
                    },
                    child: const Icon(IconsConstants.like)),
              ),
              const BottomNavigationBarItem(
                label: '',
                icon:  Icon(IconsConstants.message),
              ),
              const BottomNavigationBarItem(
                label: '',
                icon: Icon(IconsConstants.profile),
              ),
            ],
            selectedItemColor: ColorsConstants.antiClick,
            unselectedItemColor: ColorsConstants.mistBlueYourAccount,
            iconSize: 30,
            elevation: 5),
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.06, vertical: 47.07),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('assets/icon.png'),
                    Text(
                      StringConstants.privacyPolicy,
                      style: MediumAppStyles.mediumText(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: ColorsConstants.blueZodiacHello),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 41,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    StringConstants.longText,
                    style: RegularAppStyles.regularText(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: ColorsConstants.blueZodiacHello),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
