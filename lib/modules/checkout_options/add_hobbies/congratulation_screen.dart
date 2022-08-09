import 'package:buddee_app_premium/constants/colors.dart';
import 'package:buddee_app_premium/constants/icons.dart';
import 'package:buddee_app_premium/constants/images.dart';
import 'package:buddee_app_premium/constants/strings_constants.dart';
import 'package:buddee_app_premium/constants/styles.dart';
import 'package:flutter/material.dart';

class CongratulationScreen extends StatefulWidget {
  const CongratulationScreen({Key? key}) : super(key: key);

  @override
  State<CongratulationScreen> createState() => _CongratulationScreenState();
}

class _CongratulationScreenState extends State<CongratulationScreen> {
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentindex,
          onTap: (index) => setState(() => _currentindex = index),
          items:  <BottomNavigationBarItem>[
           const BottomNavigationBarItem(
              label: 'Direction',
              icon: Icon(IconsConstants.direction),
            ),
           const BottomNavigationBarItem(
              label: 'Like',
              icon: Icon(IconsConstants.like),
            ),
            BottomNavigationBarItem(
              label: 'Message',
              icon: InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed('/MessagesScreen');
                  },
                  child: Icon(IconsConstants.message)),
            ),
           const BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(IconsConstants.profile),
            ),
          ],
          selectedItemColor: ColorsConstants.antiClick,
          unselectedItemColor: ColorsConstants.mistBlueYourAccount,
          iconSize: 30,
          elevation: 5),
      backgroundColor: ColorsConstants.whiteCreateAccount,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 18.06, vertical: 44.07),
            child: Column(
              children: [
                Row(
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Icon(
                        IconsConstants.arrow,
                        color: ColorsConstants.cadetBlue,
                      ),
                    ),
                    Text(
                      StringConstants.explore,
                      style: MediumAppStyles.mediumText(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  StringConstants.congrats,
                  style: MediumAppStyles.mediumText(
                      fontSize: 28, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 50,
                ),
                Image.asset(AppImages.celebration),
                const SizedBox(
                  height: 15,
                ),
                Align(
                  child: Text(
                    StringConstants.accountHolder,
                    style: MediumAppStyles.mediumText(
                        fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  height: 58,
                  width: 311,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
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
                  ),
                  child: Center(
                    child: Text(
                      StringConstants.goToBuddee,
                      style: SemiBoldAppStyle.semiBoldText(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: ColorsConstants.whiteCreateAccount),
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
