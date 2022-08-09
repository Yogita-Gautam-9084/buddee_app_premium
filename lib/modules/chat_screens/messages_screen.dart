import 'package:buddee_app_premium/constants/colors.dart';
import 'package:buddee_app_premium/constants/icons.dart';
import 'package:buddee_app_premium/constants/images.dart';
import 'package:buddee_app_premium/constants/strings_constants.dart';
import 'package:buddee_app_premium/constants/styles.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  final List images = [
    {'title': AppImages.harry, 'subtitle': StringConstants.harryName},
    {'title': AppImages.jack, 'subtitle': StringConstants.annName},
    {'title': AppImages.ann, 'subtitle': StringConstants.jackName},
    {'title': AppImages.millie, 'subtitle': StringConstants.millieName},
    {'title': AppImages.jes, 'subtitle': StringConstants.annName},
    {'title': AppImages.inga, 'subtitle': StringConstants.jackName}
  ];
  final List itemList = [
    {
      'title': StringConstants.tennis,
      'image': AppImages.tennisJes,
      'name': StringConstants.jes,
      'time': StringConstants.time,
      'about': StringConstants.descriptionTennis,
      'number': StringConstants.count2,
    },
    {
      'title': StringConstants.fishing,
      'image': AppImages.jack,
      'name': StringConstants.jes,
      'time': StringConstants.time,
      'about': StringConstants.descriptionFishing,
      'number': StringConstants.count4,
    },
    {
      'title': StringConstants.tennis,
      'image': AppImages.inga,
      'name': StringConstants.inga,
      'time': StringConstants.time2,
      'about': StringConstants.descriptionTennisInga,
      'number': StringConstants.count2,
    },
    {
      'title': StringConstants.tennis,
      'image': AppImages.tennisJes,
      'name': StringConstants.jes,
      'time': StringConstants.time,
      'about': StringConstants.descriptionTennis,
      'number': StringConstants.count2,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 18.06, vertical: 43.07),
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(
                    IconsConstants.arrow,
                    color: ColorsConstants.darkJungleGreen,
                  ),
                  Text(
                    StringConstants.messages,
                    style: MediumAppStyles.mediumText(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: ColorsConstants.blueZodiacHello),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                height: 100,
                child: GridView.count(
                  crossAxisCount: 1,
                  scrollDirection: Axis.horizontal,
                  mainAxisSpacing: 2,
                  children: List.generate(
                    images.length,
                    (index) {
                      return _buildGridView(
                        imageUrl: images[index]['title'],
                        name: images[index]['subtitle'],
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: itemList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _buildListView(
                      title: itemList[index]['title'],
                      image: itemList[index]['image'],
                      name: itemList[index]['name'],
                      number: itemList[index]['number'],
                      about: itemList[index]['about'],
                      time: itemList[index]['time'],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildGridView({
    required String imageUrl,
    required String name,
  }) {
    return Row(
      children: [
        Column(
          children: [
            Image.asset(
              imageUrl,
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Container(
                  height: 14,
                  width: 14,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    gradient: const LinearGradient(colors: [
                      ColorsConstants.antiClick,
                      ColorsConstants.cantaloupeButtonColor
                    ], end: Alignment.topLeft, begin: Alignment.topRight),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  name,
                  style: MediumAppStyles.mediumText(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: ColorsConstants.downRiver),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  _buildListView({
    required String title,
    required String image,
    required String name,
    required String time,
    required String about,
    required String number,
  }) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: ColorsConstants.frostedMint,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: const LinearGradient(colors: [
                        ColorsConstants.robinEggBlue,
                        ColorsConstants.celeste
                      ], end: Alignment.topLeft, begin: Alignment.topRight),
                    ),
                    child: Text(
                      title,
                      style: MediumAppStyles.mediumText(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: ColorsConstants.blueZodiacHello),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    image,
                    height: 100,
                    width: 90,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name,
                        style: MediumAppStyles.mediumText(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: ColorsConstants.blueZodiacHello),
                      ),
                    const   SizedBox(
                        width: 50,
                      ),
                      Text(
                        time,
                        style: RegularAppStyles.regularText(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: ColorsConstants.mistBlueYourAccount),
                      ),
                    ],
                  ),
                  Text(
                    about,
                    style: RegularAppStyles.regularText(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: ColorsConstants.mistBlueYourAccount),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 24,
        )
      ],
    );
  }
}
