import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news24/core/components/my_text_style_const.dart';
import 'package:news24/core/constants/color_Const.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConst.kPrimaryTranparent,
        elevation: 0,
        title: Text(
          "Profile",
          style: MyTextStyle.profileTextStyle,
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                alignment: Alignment.center,
                child: Column(
                  children: const [
                    Image(
                      image: AssetImage("assets/images/profile.png"),
                    ),
                    Text("Change Picture")
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Username",
                      style: MyTextStyle.interestsTextStyle,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "@khoj1matov",
                          style: MyTextStyle.settingsTextStyle,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.62,
                          child: Divider(
                            thickness: 0.2,
                            color: ColorConst.kPrimaryBlack,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Link Accounts",
                    style: MyTextStyle.interestsTextStyle,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: SvgPicture.asset(
                          "assets/icons/twtter.svg",
                          width: 20,
                          height: 20,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.84,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Facebook",
                                  style: MyTextStyle.settingsTextStyle,
                                ),
                                const Icon(
                                  Icons.chevron_right_outlined,
                                )
                              ],
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Divider(
                                thickness: 0.5,
                                color: ColorConst.kPrimaryBlack,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: SvgPicture.asset(
                          "assets/icons/facebook.svg",
                          width: 20,
                          height: 20,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.84,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Twitter",
                                  style: MyTextStyle.settingsTextStyle,
                                ),
                                const Icon(
                                  Icons.chevron_right_outlined,
                                )
                              ],
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Divider(
                                thickness: 0.5,
                                color: ColorConst.kPrimaryBlack,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
