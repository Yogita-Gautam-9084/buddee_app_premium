import 'package:buddee_app_premium/constants/colors.dart';
import 'package:buddee_app_premium/constants/icons.dart';
import 'package:buddee_app_premium/constants/strings_constants.dart';
import 'package:buddee_app_premium/constants/styles.dart';
import 'package:buddee_app_premium/modules/login/add_hobbies_screen.dart';
import 'package:flutter/material.dart';

class SignUpAboutScreen extends StatefulWidget {
  const SignUpAboutScreen({Key? key}) : super(key: key);

  @override
  State<SignUpAboutScreen> createState() => _SignUpAboutScreenState();
}

TabController _tabController = _tabController;

class _SignUpAboutScreenState extends State<SignUpAboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: DefaultTabController(
          length: 2,
          child: Padding(
            padding: const EdgeInsets.all(28.06),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/icon.png'),
                const SizedBox(
                  height: 36.07,
                ),
                Text(
                  StringConstants.tellUs,
                  style: MediumAppStyles.mediumText(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: ColorsConstants.blueZodiacHello),
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
                TextField(
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
                TextField(
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
                Container(
                  height: 58,
                  width: 325,
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorsConstants.antiClick),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const AddHobbiesScreen()));
                      },
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
