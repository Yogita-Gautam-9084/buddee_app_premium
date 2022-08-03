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
    {'title': AppImages.jack, 'subtitle': StringConstants.jackName},
    {'title': AppImages.ann, 'subtitle': StringConstants.jackName},
    {'title': AppImages.millie, 'subtitle': StringConstants.jackName},
    {'title': AppImages.jes, 'subtitle': StringConstants.jackName},
    {'title': AppImages.inga, 'subtitle': StringConstants.jackName}
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
              Expanded(
                child: GridView.count(
                  crossAxisCount: 1,
                  scrollDirection: Axis.horizontal,
                  mainAxisSpacing: 2,
                  childAspectRatio: 7,
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
}
