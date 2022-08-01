import 'package:buddee_app_premium/constants/colors.dart';
import 'package:buddee_app_premium/constants/icons.dart';
import 'package:buddee_app_premium/constants/images.dart';
import 'package:buddee_app_premium/constants/strings_constants.dart';
import 'package:buddee_app_premium/constants/styles.dart';
import 'package:flutter/material.dart';

class AddHobbiesAddPhoto extends StatefulWidget {
  const AddHobbiesAddPhoto({Key? key}) : super(key: key);

  @override
  State<AddHobbiesAddPhoto> createState() => _AddHobbiesAddPhotoState();
}

List<String> images = [
  AppImages.person,
  AppImages.laptop,
  AppImages.gun,
  AppImages.addGallery,
  AppImages.addGallery,
  AppImages.addGallery,
];

final List icon = [
  {'title': AppImages.star, 'subtitle': StringConstants.mainPhoto},
  {'title': AppImages.close, 'subtitle': StringConstants.delete},
];

int _currentindex = 0;

class _AddHobbiesAddPhotoState extends State<AddHobbiesAddPhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentindex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
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
            SizedBox(
              height: 400,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8.0,
                  crossAxisSpacing: 8,
                  mainAxisExtent: 130,
                ),
                itemCount: images.length,
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                      child: _gridVeiwList(
                    images: images[index],
                  ));
                },
              ),
            ),
            Center(
              child: Text(
                StringConstants.setPhoto,
                style: MediumAppStyles.mediumText(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: ColorsConstants.mistBlueYourAccount),
              ),
            ),
            SizedBox(
              height: 50,
              child: Center(
                child: ListView.builder(
                  itemCount: icon.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Center(
                      child: _listVeiw(
                        title: icon[index]['title'],
                        subtitle: icon[index]['subtitle'],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _gridVeiwList({
    required String images,
  }) {
    return Column(
      children: [
        Container(
          height: 130,
          width: 109,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset(images),
        ),
      ],
    );
  }
}

_listVeiw({required String title, required String subtitle}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 40),
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: ColorsConstants.greenishBlue,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Image.asset(
            title,
            height: 12,
            width: 12,
            fit: BoxFit.cover,
          ),
        ),

        const SizedBox(
          height: 4,
        ),
        Text(
          subtitle,
          style: MediumAppStyles.mediumText(
              color: ColorsConstants.greenishBlue,
              fontWeight: FontWeight.w500,
              fontSize: 12),
        ),
      ],
    ),
  );
}
