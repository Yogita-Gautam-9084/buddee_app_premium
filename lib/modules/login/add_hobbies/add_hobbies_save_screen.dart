import 'package:buddee_app_premium/constants/colors.dart';
import 'package:buddee_app_premium/constants/icons.dart';
import 'package:buddee_app_premium/constants/strings_constants.dart';
import 'package:buddee_app_premium/constants/styles.dart';
import 'package:flutter/material.dart';

class AddHobbiesSaveScreen extends StatefulWidget {
  const AddHobbiesSaveScreen({Key? key}) : super(key: key);

  @override
  State<AddHobbiesSaveScreen> createState() => _AddHobbiesSaveScreenState();
}

class _AddHobbiesSaveScreenState extends State<AddHobbiesSaveScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 25.06, top: 47.07, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/icon.png',
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
                  height: 29,
                ),
                Text(
                  StringConstants.search,
                  style: RegularAppStyles.regularText(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: ColorsConstants.blueZodiacHello,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
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
                    Image.asset('assets/cross.png'),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  StringConstants.lookingFor,
                  style: RegularAppStyles.regularText(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: ColorsConstants.blueZodiacHello),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  height: 94,
                  width: 343,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: ColorsConstants.quillGreyProfile),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 11, bottom: 9, right: 45.5, left: 15.5),
                    child: Text(
                      StringConstants.someInfoAboutYourHobby,
                      style: RegularAppStyles.regularText(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: ColorsConstants.quillGreyProfile,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 181,),
                Container(
                  width: 330,
                  height: 58,
                  decoration: BoxDecoration(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
