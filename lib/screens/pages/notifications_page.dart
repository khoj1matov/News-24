import 'package:flutter/material.dart';
import 'package:news24/core/components/my_text_style_const.dart';
import 'package:news24/core/constants/color_Const.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorConst.kPrimaryTranparent,
        title: Text(
          "Notification",
          style: MyTextStyle.profileTextStyle,
        ),
      ),
      body: Center(
        child: Text(
          "Nothing at the moment!!!",
          style: MyTextStyle.profileTextStyle,
        ),
      ),
    );
  }
}
