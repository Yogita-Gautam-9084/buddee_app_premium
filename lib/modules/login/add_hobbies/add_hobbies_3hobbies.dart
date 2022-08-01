import 'package:buddee_app_premium/constants/colors.dart';
import 'package:buddee_app_premium/constants/strings_constants.dart';
import 'package:buddee_app_premium/constants/styles.dart';
import 'package:flutter/material.dart';

class AddHobbies3Hobbies extends StatefulWidget {
  const AddHobbies3Hobbies({Key? key}) : super(key: key);

  @override
  State<AddHobbies3Hobbies> createState() => _AddHobbies3HobbiesState();
}

class _AddHobbies3HobbiesState extends State<AddHobbies3Hobbies> {
  final List items = [
    {
      'title': StringConstants.badminton,
    },
    {
      'title': StringConstants.photography,
    },
    {
      'title': StringConstants.surfing,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.06, vertical: 45.07),
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
              height: 36,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                StringConstants.youHave3Hobby,
                style: MediumAppStyles.mediumText(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: ColorsConstants.blueZodiacHello),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Center(
                      child: _listView(title: items[index]['title']),
                    );
                  }),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/AddHobbiesAddPhotos');
              },
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/AddHobbiesAddPhotos');
                },
                child: Center(
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
              ),
            ),
          ],
        ),
      ),
    );
  }

  _listView({
    required String title,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: SemiBoldAppStyle.semiBoldText(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: ColorsConstants.blueZodiacHello),
                  ),
                  Image.asset('assets/cross.png'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
