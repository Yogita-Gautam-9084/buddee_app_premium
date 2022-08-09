import 'package:buddee_app_premium/constants/colors.dart';
import 'package:buddee_app_premium/constants/icons.dart';
import 'package:buddee_app_premium/constants/strings_constants.dart';
import 'package:buddee_app_premium/constants/styles.dart';
import 'package:flutter/material.dart';

class ChoosePlanScreen extends StatefulWidget {
  const ChoosePlanScreen({Key? key}) : super(key: key);

  @override
  State<ChoosePlanScreen> createState() => _ChoosePlanScreenState();
}

class _ChoosePlanScreenState extends State<ChoosePlanScreen> {
  List<String> items = [
    StringConstants.unlimitedLikes,
    StringConstants.unlimitedHobbiesListed,
    StringConstants.locationChange,
    StringConstants.seeLikeProfiles,
    StringConstants.yourMessages,
  ];

  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentindex,
          onTap: (index) => setState(() => _currentindex = index),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: 'Direction',
              icon: Icon(IconsConstants.direction),
            ),
            BottomNavigationBarItem(
              label: 'Like',
              icon: Icon(IconsConstants.like),
            ),
            BottomNavigationBarItem(
              label: 'Message',
              icon: Icon(IconsConstants.message),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(IconsConstants.profile),
            ),
          ],
          selectedItemColor: ColorsConstants.antiClick,
          unselectedItemColor: ColorsConstants.mistBlueYourAccount,
          iconSize: 30,
          elevation: 5),
      backgroundColor: ColorsConstants.mercury,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Icon(
                        IconsConstants.arrow,
                        color: ColorsConstants.cadetBlue,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      StringConstants.getPremium,
                      style: MediumAppStyles.mediumText(
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          color: ColorsConstants.blueZodiacHello),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      StringConstants.chooseYourPlan,
                      style: RegularAppStyles.regularText(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: ColorsConstants.mistBlueYourAccount),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 30),
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              gradient: LinearGradient(
                                  colors: [
                                    ColorsConstants.robinEggBlue,
                                    ColorsConstants.celeste
                                  ],
                                  end: Alignment.topLeft,
                                  begin: Alignment.topRight),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  StringConstants.premium,
                                  style: ExtraBoldAppStyle.extraBoldText(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                      color: ColorsConstants.blueZodiacHello),
                                ),
                                const Text(
                                  StringConstants.premiumCost,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 15),
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                color: ColorsConstants.whiteCreateAccount),
                            child: Column(
                              children: [ 
                                const Text(
                                  StringConstants.discount,
                                  style: TextStyle(
                                      color: ColorsConstants.sea, fontSize: 35),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                SizedBox(
                                  height: 280,
                                  child: ListView.builder(
                                    itemCount: items.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return _buildListVeiw(
                                          title: items[index]);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.of(context).pushNamed('/PaymentScreen');
                            },
                            child: Container(
                              height: 58,
                              width: 311,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: ColorsConstants.neonCarrot,
                                    blurRadius: 10,
                                    offset: Offset(0.0, 2),
                                  )
                                ],
                                gradient: const LinearGradient(
                                    colors: [
                                      ColorsConstants.antiClick,
                                      ColorsConstants.cantaloupeButtonColor
                                    ],
                                    end: Alignment.topLeft,
                                    begin: Alignment.topRight),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Text(StringConstants.choosePlan,
                                    style: SemiBoldAppStyle.semiBoldText(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20,
                                        color:
                                            ColorsConstants.whiteCreateAccount)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 230,
                left: 120,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorsConstants.whiteCreateAccount,
                  ),
                  child: Center(
                    child: Text(
                      StringConstants.perMonth,
                      style: BoldAppStyle.boldText(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: ColorsConstants.rhino),
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

  _buildListVeiw({
    required String title,
  }) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            title,
            style: RegularAppStyles.regularText(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: ColorsConstants.blueZodiacHello),
          ),
        ),
        const Divider(
          color: ColorsConstants.cadetBlue,
          thickness: 1,
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
