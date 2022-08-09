import 'package:buddee_app_premium/constants/colors.dart';
import 'package:buddee_app_premium/constants/icons.dart';
import 'package:buddee_app_premium/constants/strings_constants.dart';
import 'package:buddee_app_premium/constants/styles.dart';
import 'package:flutter/material.dart';

class PhotographyHobbies extends StatefulWidget {
  const PhotographyHobbies({Key? key}) : super(key: key);

  @override
  State<PhotographyHobbies> createState() => _PhotographyHobbiesState();
}

class _PhotographyHobbiesState extends State<PhotographyHobbies> {
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.06),
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
                  ),
                ],
              ),
              const SizedBox(
                height: 36.07,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  StringConstants.editHobbies,
                  style: MediumAppStyles.mediumText(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: ColorsConstants.blueZodiacHello),
                ),
              ),
              const SizedBox(
                height: 29,
              ),
              Text(
                StringConstants.letsDiscuss,
                style: RegularAppStyles.regularText(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: ColorsConstants.blueZodiacHello,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 48,
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: RegularAppStyles.regularText(
                        color: ColorsConstants.quillGreyProfile,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    hintText: StringConstants.searchForHobbies,
                    prefixIcon: const Icon(
                      IconsConstants.search,
                      color: ColorsConstants.lemonGrass,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
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
                        StringConstants.photography,
                        style: SemiBoldAppStyle.semiBoldText(
                            fontWeight: FontWeight.w600,
                            color: ColorsConstants.blueZodiacHello,
                            fontSize: 16),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Image.asset('assets/cross.png'),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                StringConstants.addDescription,
                style: RegularAppStyles.regularText(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: ColorsConstants.blueZodiacHello),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: ColorsConstants.quillGreyProfile),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 11, bottom: 9, right: 45.5, left: 15.5),
                  child: Text(
                    StringConstants.iLove,
                    style: RegularAppStyles.regularText(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: ColorsConstants.blueZodiacHello,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 181,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/Add3HobbiesProfile');
                  },
                  child: Container(
                    width: 311,
                    height: 58,
                    decoration: BoxDecoration(
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
                        borderRadius: BorderRadius.circular(40)),
                    child: Center(
                      child: Text(StringConstants.save,
                          style: SemiBoldAppStyle.semiBoldText(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: ColorsConstants.whiteCreateAccount)),
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
