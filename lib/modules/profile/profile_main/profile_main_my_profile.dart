import 'package:buddee_app_premium/constants/images.dart';
import 'package:flutter/material.dart';

class ProfileMainMyProfile extends StatefulWidget {
  const ProfileMainMyProfile({Key? key}) : super(key: key);

  @override
  State<ProfileMainMyProfile> createState() => _ProfileMainMyProfileState();
}

class _ProfileMainMyProfileState extends State<ProfileMainMyProfile> {
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset('assets/icon.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
