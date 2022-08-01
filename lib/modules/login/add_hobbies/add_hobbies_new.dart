import 'package:buddee_app_premium/constants/colors.dart';
import 'package:buddee_app_premium/constants/icons.dart';
import 'package:buddee_app_premium/constants/strings_constants.dart';
import 'package:buddee_app_premium/constants/styles.dart';
import 'package:flutter/material.dart';

class AddHobbiesNew extends StatefulWidget {
  const AddHobbiesNew({Key? key}) : super(key: key);

  @override
  State<AddHobbiesNew> createState() => _AddHobbiesNewState();
}

class _AddHobbiesNewState extends State<AddHobbiesNew> {
  final List items = [
    {
      'title': StringConstants.badminton,
      'subtitle': StringConstants.intermediateLevel,
    },
    {
      'title': StringConstants.photography,
      'subtitle': StringConstants.iLove,
    },
    {
      'title': StringConstants.surfing,
      'subtitle': StringConstants.surfingOverLockdown,
    }
  ];
 int _currentindex = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _currentindex,
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
        child: SafeArea(
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
                const SizedBox(
                  height: 36,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    StringConstants.youHave3Hobby,
                    style: MediumAppStyles.mediumText(
                        fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _buildViewList(
                      title: items[index]['title'],
                      subtitle: items[index]['subtitle'],
                    );
                  },
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed('/AddHobbies3Hobbies');
                  },
                  child: Center(
                    child: Container(
                      height: 58,
                      width: 311,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: ColorsConstants.blueJay),
                      ),
                      child: Center(
                        child: Text(
                          StringConstants.addNewHobby,
                          style: SemiBoldAppStyle.semiBoldText(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    height: 58,
                    width: 311,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: ColorsConstants.antiClick),
                    ),
                    child: Center(
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

  _buildViewList({
    required String title,
    required String subtitle,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: 32,
              width: 152,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: const LinearGradient(
                  colors: [ColorsConstants.celeste, ColorsConstants.robinEggBlue],
                ),
              ),
              child: Center(
                child: Text(
                  title,
                  style: SemiBoldAppStyle.semiBoldText(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: ColorsConstants.blueZodiacHello,
                  ),
                ),
              ),
            ),
          const Spacer(),
            Image.asset('assets/edit.png'),
            Image.asset('assets/cross.png'),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          subtitle,
          style: RegularAppStyles.regularText(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: ColorsConstants.blueZodiacHello),
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
