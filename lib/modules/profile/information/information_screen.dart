import 'package:buddee_app_premium/constants/colors.dart';
import 'package:buddee_app_premium/constants/icons.dart';
import 'package:buddee_app_premium/constants/strings_constants.dart';
import 'package:buddee_app_premium/constants/styles.dart';
import 'package:flutter/material.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
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
              icon: Icon(IconsConstants.profile,),
            ),
          ],
          selectedItemColor: ColorsConstants.antiClick,
          unselectedItemColor: ColorsConstants.mistBlueYourAccount,
          iconSize: 30,
          elevation: 5),
      body: SingleChildScrollView(
        child: DefaultTabController(
          length: 2,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 49.07, horizontal: 25.06),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('assets/icon.png'),
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
                    StringConstants.information,
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
                  StringConstants.name,
                  style: RegularAppStyles.regularText(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: ColorsConstants.blueZodiacHello),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 48,
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle: RegularAppStyles.regularText(
                          color: ColorsConstants.blueZodiacHello,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                      hintText: StringConstants.name,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 21,
                ),
                Text(
                  StringConstants.dOB,
                  style: RegularAppStyles.regularText(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: ColorsConstants.blueZodiacHello),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 48,
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle: RegularAppStyles.regularText(
                          color: ColorsConstants.blueZodiacHello,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                      hintText: StringConstants.dOB,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 21,
                ),
                Text(
                  StringConstants.gender,
                  style: RegularAppStyles.regularText(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: ColorsConstants.blueZodiacHello,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  height: 58,
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorsConstants.quillGreyProfile),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: ColorsConstants.celeste),
                      unselectedLabelColor: ColorsConstants.celeste,
                      tabs: [
                        Tab(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                IconsConstants.male,
                                color: ColorsConstants.blueZodiacHello,
                              ),
                              Text(
                                StringConstants.male,
                                style: MediumAppStyles.mediumText(
                                    fontSize: 16,
                                    color: ColorsConstants.blueZodiacHello),
                              ),
                            ],
                          ),
                        ),
                        Tab(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                IconsConstants.female,
                                color: ColorsConstants.blueZodiacHello,
                              ),
                              Text(
                                StringConstants.female,
                                style: MediumAppStyles.mediumText(
                                    fontSize: 16,
                                    color: ColorsConstants.blueZodiacHello),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 188),
                Center(
                  child: Container(
                    height: 58,
                    width: 311,
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorsConstants.antiClick),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        StringConstants.nextStep,
                        style: SemiBoldAppStyle.semiBoldText(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: ColorsConstants.antiClick),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
