import 'package:buddee_app_premium/constants/colors.dart';
import 'package:buddee_app_premium/constants/icons.dart';
import 'package:buddee_app_premium/constants/images.dart';
import 'package:buddee_app_premium/constants/strings_constants.dart';
import 'package:buddee_app_premium/constants/styles.dart';
import 'package:flutter/material.dart';

class AddHobbiesAddPhotos extends StatefulWidget {
  const AddHobbiesAddPhotos({Key? key}) : super(key: key);

  @override
  State<AddHobbiesAddPhotos> createState() => _AddHobbiesAddPhotosState();
}

class _AddHobbiesAddPhotosState extends State<AddHobbiesAddPhotos> {
  List<String> images = [
    AppImages.person,
    AppImages.addGallery,
    AppImages.addGallery,
    AppImages.addGallery,
    AppImages.addGallery,
    AppImages.addGallery,
  ];
  int _currentindex = 0;
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
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8.0,
                  crossAxisSpacing: 8,
                  mainAxisExtent: 130,
                ),
                itemCount: images.length,
                itemBuilder: (BuildContext context, int index) {
                  return Center(child: _buildImageList(images[index]));
                },
              ),
            ),
            Center(
              child: InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed('/AddHobbiesAddPhoto');
                },
                child: Container(
                  width: 311,
                  height: 58,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: ColorsConstants.neonCarrot,
                        blurRadius: 10,
                        offset: Offset(0.0, 2),
                      )
                    ],
                    gradient: const LinearGradient(colors: [
                      ColorsConstants.antiClick,
                      ColorsConstants.cantaloupeButtonColor
                    ], end: Alignment.topLeft, begin: Alignment.topRight),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Text(
                      StringConstants.save,
                      style: SemiBoldAppStyle.semiBoldText(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: ColorsConstants.whiteCreateAccount),
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

  _buildImageList(String images) {
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
