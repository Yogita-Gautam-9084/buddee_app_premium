import 'package:buddee_app_premium/constants/colors.dart';
import 'package:buddee_app_premium/constants/icons.dart';
import 'package:buddee_app_premium/constants/strings_constants.dart';
import 'package:buddee_app_premium/constants/styles.dart';
import 'package:flutter/material.dart';

class AddHobbiesScreen extends StatefulWidget {
  const AddHobbiesScreen({Key? key}) : super(key: key);

  @override
  State<AddHobbiesScreen> createState() => _AddHobbiesScreenState();
}

class _AddHobbiesScreenState extends State<AddHobbiesScreen> {
  List<String> items = [
    StringConstants.astronomy,
    StringConstants.birdWatching,
    StringConstants.badminton,
    StringConstants.camping,
    StringConstants.chess,
    StringConstants.dance,
    StringConstants.drawing,
    StringConstants.fitness,
    StringConstants.fishing,
    StringConstants.golf,
    StringConstants.hiking,
    StringConstants.kayaking,
    StringConstants.music,
    StringConstants.origami,
    StringConstants.photography,
    StringConstants.rockClimbing,
    StringConstants.surfing,
    StringConstants.tennis,
    StringConstants.trainSpotting,
    StringConstants.yoga,
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
              label: StringConstants.direction,
              icon: Icon(IconsConstants.direction),
            ),
            BottomNavigationBarItem(
              label: StringConstants.like,
              icon: Icon(IconsConstants.like),
            ),
            BottomNavigationBarItem(
              label: StringConstants.message,
              icon: Icon(IconsConstants.message),
            ),
            BottomNavigationBarItem(
              label: StringConstants.profile,
              icon: Icon(IconsConstants.profile),
            ),
          ],
          selectedItemColor: ColorsConstants.antiClick,
          unselectedItemColor: ColorsConstants.mistBlueYourAccount,
          iconSize: 30,
          elevation: 5),
      body: Padding(
        padding: const EdgeInsets.only(top: 44.07, left: 25.06, right: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              IconsConstants.arrow,
              color: ColorsConstants.darkJungleGreen,
            ),
            const SizedBox(
              height: 39.07,
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
              height: 21,
            ),
            Text(
              StringConstants.search,
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
              height: 32,
            ),
            Expanded(
              child: SizedBox(
                height: double.infinity,
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 3,
                  children: List.generate(
                    items.length,
                    (index) {
                      return Center(
                        child: _buildCardViewWidget(
                            items: items[index], title: items[index]),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildCardViewWidget({required String items, required String title}) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 9),
          height: 45,
          width: 152,
          decoration: BoxDecoration(
              border: Border.all(color: ColorsConstants.blueZodiacHello),
              borderRadius: BorderRadius.circular(8)),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              items.toString(),
              style: SemiBoldAppStyle.semiBoldText(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: ColorsConstants.blueZodiacHello),
            ),
          ),
        ),
      ],
    );
  }
}
