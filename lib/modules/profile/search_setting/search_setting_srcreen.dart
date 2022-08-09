import 'package:buddee_app_premium/constants/colors.dart';
import 'package:buddee_app_premium/constants/icons.dart';
import 'package:buddee_app_premium/constants/strings_constants.dart';
import 'package:buddee_app_premium/constants/styles.dart';
import 'package:flutter/material.dart';

class SearchSettingScreen extends StatefulWidget {
  const SearchSettingScreen({Key? key}) : super(key: key);

  @override
  State<SearchSettingScreen> createState() => _SearchSettingScreenState();
}

class _SearchSettingScreenState extends State<SearchSettingScreen> {
  RangeValues _currentRangeValues = const RangeValues(21, 37);
  int _value = 3;
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
      body: SingleChildScrollView(
        child: DefaultTabController(
          length: 3,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 18.06, vertical: 44.07),
            child: Column(
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
                  height: 40.31,
                ),
                Text(
                  StringConstants.searchSetting,
                  style: MediumAppStyles.mediumText(
                      fontWeight: FontWeight.w500,
                      fontSize: 28,
                      color: ColorsConstants.blueZodiacHello),
                ),
                const SizedBox(
                  height: 21.58,
                ),
                Container(
                  height: 116,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: ColorsConstants.quillGreyProfile),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          StringConstants.gender,
                          style: MediumAppStyles.mediumText(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: ColorsConstants.blueZodiacHello),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: TabBar(
                            indicatorSize: TabBarIndicatorSize.tab,
                            indicator: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: ColorsConstants.celeste),
                            unselectedLabelColor:
                                ColorsConstants.quillGreyProfile,
                            tabs: [
                              Tab(
                                child: Text(
                                  StringConstants.male,
                                  style: MediumAppStyles.mediumText(
                                      fontSize: 16,
                                      color: ColorsConstants.blueZodiacHello),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  StringConstants.female,
                                  style: MediumAppStyles.mediumText(
                                      fontSize: 16,
                                      color: ColorsConstants.blueZodiacHello),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  StringConstants.both,
                                  style: MediumAppStyles.mediumText(
                                      fontSize: 16,
                                      color: ColorsConstants.blueZodiacHello),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  height: 195,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: ColorsConstants.quillGreyProfile),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              StringConstants.distance,
                              style: MediumAppStyles.mediumText(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: ColorsConstants.blueZodiacHello),
                            ),
                            Text(
                              StringConstants.km,
                              style: RegularAppStyles.regularText(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: ColorsConstants.blueZodiacHello),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 28,
                        ),
                        Row(
                          children: [
                            Text(
                              StringConstants.max,
                              style: RegularAppStyles.regularText(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: ColorsConstants.blueZodiacHello),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 18, horizontal: 40),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                      color:
                                          ColorsConstants.mistBlueYourAccount)),
                              child: Text(
                                StringConstants.max35,
                                style: RegularAppStyles.regularText(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: ColorsConstants.black),
                              ),
                            ),
                          ],
                        ),
                        Slider(
                          value: _value.toDouble(),
                          min: 1,
                          max: 10,
                          activeColor: ColorsConstants.celeste,
                          inactiveColor: ColorsConstants.quillGreyProfile,
                          onChanged: (double newValue) {
                            setState(
                              () {
                                _value = newValue.round();
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  height: 195,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: ColorsConstants.quillGreyProfile),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              StringConstants.age,
                              style: MediumAppStyles.mediumText(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: ColorsConstants.blueZodiacHello),
                            ),
                            Text(
                              StringConstants.ageRange,
                              style: RegularAppStyles.regularText(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: ColorsConstants.blueZodiacHello),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 28,
                        ),
                        Row(
                          children: [
                            Text(
                              StringConstants.from,
                              style: RegularAppStyles.regularText(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: ColorsConstants.blueZodiacHello),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 18, horizontal: 40),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                      color:
                                          ColorsConstants.mistBlueYourAccount)),
                              child: Text(
                                StringConstants.lowAge,
                                style: RegularAppStyles.regularText(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: ColorsConstants.black),
                              ),
                            ),
                            const Spacer(),
                            Text(
                              StringConstants.to,
                              style: RegularAppStyles.regularText(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: ColorsConstants.blueZodiacHello),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 18, horizontal: 40),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                    color: ColorsConstants.mistBlueYourAccount),
                              ),
                              child: Text(
                                StringConstants.highAge,
                                style: RegularAppStyles.regularText(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: ColorsConstants.black),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: RangeSlider(
                            values: _currentRangeValues,
                            min: 0,
                            max: 100,
                            activeColor: ColorsConstants.celeste,
                            inactiveColor: ColorsConstants.quillGreyProfile,
                            labels: RangeLabels(
                              _currentRangeValues.start.round().toString(),
                              _currentRangeValues.end.round().toString(),
                            ),
                            onChanged: (RangeValues values) {
                              setState(() {
                                _currentRangeValues = values;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/');
                  },
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed('/AddHobbiesSearch ');
                    },
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
                        child: Text(
                          StringConstants.apply,
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
      ),
    );
  }
}
