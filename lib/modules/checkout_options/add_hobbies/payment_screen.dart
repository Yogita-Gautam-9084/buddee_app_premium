import 'package:buddee_app_premium/constants/colors.dart';
import 'package:buddee_app_premium/constants/icons.dart';
import 'package:buddee_app_premium/constants/images.dart';
import 'package:buddee_app_premium/constants/strings_constants.dart';
import 'package:buddee_app_premium/constants/styles.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  List<String> items = [
    StringConstants.unlimitedLikes,
    StringConstants.unlimitedHobbiesListed,
    StringConstants.locationChange,
    StringConstants.seeLikeProfiles,
    StringConstants.yourMessages,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.06, vertical: 44.07),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Icon(
                IconsConstants.arrow,
                color: ColorsConstants.cadetBlue,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              StringConstants.getPremium,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 350,
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return _buildListVeiw(title: items[index]);
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              StringConstants.chooseYourPlan,
              style: RegularAppStyles.regularText(
                  fontSize: 20, color: ColorsConstants.blueZodiacHello),
            ),
            ElevatedButton(
              child: const Text("Show Bottom Sheet"),
              onPressed: () {
                showModalBottomSheet<void>(
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 330,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(IconsConstants.apple),
                                const Text(
                                  StringConstants.pay,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                const Spacer(),
                                Text(StringConstants.cancel,
                                    style: MediumAppStyles.mediumText(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,color: ColorsConstants.coralRed),),
                              ],
                            ),
                            const Divider(
                              thickness: 1,
                              // indent: 10,
                              color: ColorsConstants.cadetBlue,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, right: 10),
                              child: Row(
                                children: [
                                  Image.asset(
                                    AppImages.visa,
                                    height: 40,
                                    width: 50,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        StringConstants.visa,
                                        style: MediumAppStyles.mediumText(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13),
                                      ),
                                      const Text(
                                        StringConstants.code,
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    IconsConstants.arrowBack,
                                    color: ColorsConstants.antiClick,
                                  )
                                ],
                              ),
                            ),
                            const Divider(
                              thickness: 1,
                              color: ColorsConstants.cadetBlue,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  StringConstants.payGuacamole,
                                  style: MediumAppStyles.mediumText(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  StringConstants.payAmount,
                                  style: MediumAppStyles.mediumText(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            const Divider(
                              thickness: 1,
                              color: ColorsConstants.cadetBlue,
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/img.png',
                                  height: 100,
                                  width: 100,
                                ),
                                Text(
                                  StringConstants.confirmWith,
                                  style: MediumAppStyles.mediumText(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  _buildListVeiw({
    required String title,
  }) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorsConstants.antiClick),
                child: const Icon(
                  IconsConstants.check,
                  color: ColorsConstants.whiteCreateAccount,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  title,
                  style: RegularAppStyles.regularText(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: ColorsConstants.blueZodiacHello),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
