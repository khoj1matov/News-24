import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news24/core/components/my_text_style_const.dart';
import 'package:news24/core/constants/color_Const.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  bool _switch1 = true;
  bool _switch2 = true;
  bool _switch3 = true;
  bool _switch4 = true;
  bool _switch5 = true;
  bool _switch6 = true;
  bool _switch7 = true;
  bool _switch8 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  "Interests",
                  style: MyTextStyle.interestsTextStyle,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _text("All"),
                  CupertinoSwitch(
                    activeColor: ColorConst.kPrimaryBlack,
                    value: _switch1,
                    onChanged: (v) {
                      setState(() {
                        _switch1 = !_switch1;
                      });
                    },
                  ),
                ],
              ),
              _divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _text("Worls News"),
                  CupertinoSwitch(
                    activeColor: ColorConst.kPrimaryBlack,
                    value: _switch2,
                    onChanged: (v) {
                      setState(() {
                        _switch2 = !_switch2;
                      });
                    },
                  ),
                ],
              ),
              _divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _text("Politics"),
                  CupertinoSwitch(
                    activeColor: ColorConst.kPrimaryBlack,
                    value: _switch3,
                    onChanged: (v) {
                      setState(() {
                        _switch3 = !_switch3;
                      });
                    },
                  ),
                ],
              ),
              _divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _text("Technology"),
                  CupertinoSwitch(
                    activeColor: ColorConst.kPrimaryBlack,
                    value: _switch4,
                    onChanged: (v) {
                      setState(() {
                        _switch4 = !_switch4;
                      });
                    },
                  ),
                ],
              ),
              _divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _text("Science"),
                  CupertinoSwitch(
                    activeColor: ColorConst.kPrimaryBlack,
                    value: _switch5,
                    onChanged: (v) {
                      setState(() {
                        _switch5 = !_switch5;
                      });
                    },
                  ),
                ],
              ),
              _divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _text("Business"),
                  CupertinoSwitch(
                    activeColor: ColorConst.kPrimaryBlack,
                    value: _switch6,
                    onChanged: (v) {
                      setState(() {
                        _switch6 = !_switch6;
                      });
                    },
                  ),
                ],
              ),
              _divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _text("Entertainment"),
                  CupertinoSwitch(
                    activeColor: ColorConst.kPrimaryBlack,
                    value: _switch7,
                    onChanged: (v) {
                      setState(() {
                        _switch7 = !_switch7;
                      });
                    },
                  ),
                ],
              ),
              _divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _text("Food"),
                  CupertinoSwitch(
                    activeColor: ColorConst.kPrimaryBlack,
                    value: _switch8,
                    onChanged: (v) {
                      setState(() {
                        _switch8 = !_switch8;
                      });
                    },
                  ),
                ],
              ),
              _divider(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: ColorConst.elevatedBackgroundColor,
                    fixedSize: MaterialStateProperty.all(
                      const Size(150, 40),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'details');
                  },
                  child: Text(
                    "Start",
                    style: MyTextStyle.signInElevattedTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Text _text(String title) {
    return Text(
      title,
      style: MyTextStyle.interestsTextStyle,
    );
  }

  Divider _divider() {
    return Divider(
      thickness: 0.2,
      color: ColorConst.kPrimaryBlack,
    );
  }
}
