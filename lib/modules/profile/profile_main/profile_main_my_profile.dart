import 'package:buddee_app_premium/constants/colors.dart';
import 'package:buddee_app_premium/constants/images.dart';
import 'package:buddee_app_premium/constants/strings_constants.dart';
import 'package:buddee_app_premium/constants/styles.dart';
import 'package:flutter/material.dart';

class ProfileMainMyProfile extends StatefulWidget {
  const ProfileMainMyProfile({Key? key}) : super(key: key);

  @override
  State<ProfileMainMyProfile> createState() => _ProfileMainMyProfileState();
}

class _ProfileMainMyProfileState extends State<ProfileMainMyProfile> {
  List<String> items = [
    StringConstants.information,
    StringConstants.hobbies,
    StringConstants.searchSetting,
    StringConstants.privacyPolicy,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              AppImages.background2,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Image.asset(
              AppImages.vectr,
            ),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Row(
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
                      const Spacer(),
                      Image.asset(AppImages.close2),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                SizedBox(
                  height: 550,
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (BuildContext context, int index) {
                      return _buildListVeiw(title: items[index]);
                    },
                  ),
                ),
                Text(
                  StringConstants.logOut,
                  style: SemiBoldAppStyle.semiBoldText(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      isUnderline: true),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  _buildListVeiw({
    required String title,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          Text(
            title,
            style: MediumAppStyles.mediumText(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: ColorsConstants.blueZodiacHello),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(color: ColorsConstants.blueZodiacHello),
            ),
            child: Image.asset(AppImages.forwardIcon),
          ),
        ],
      ),
    );
  }
}
