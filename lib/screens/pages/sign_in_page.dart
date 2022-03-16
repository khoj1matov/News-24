import 'package:flutter/material.dart';
import 'package:news24/core/components/my_text_style_const.dart';
import 'package:news24/core/constants/color_Const.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 45, left: 35, right: 35, bottom: 35),
          child: Column(
            children: [
              const Expanded(
                flex: 4,
                child: Image(
                  image: AssetImage("assets/images/title.png"),
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(labelText: "Email"),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Password",
                        suffixIcon: Icon(Icons.remove_red_eye),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
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
                        Navigator.pushReplacementNamed(context, 'start');
                      },
                      child: Text(
                        "Sign In",
                        style: MyTextStyle.signInElevattedTextStyle,
                      ),
                    ),
                    Row(
                      children: [
                        _divider(context),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text("or sign in with"),
                        ),
                        _divider(context),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _signInWith("assets/images/google.png"),
                        _signInWith("assets/images/facebok.png"),
                        _signInWith("assets/images/twitter.png"),
                        _signInWith("assets/images/apple.png"),
                      ],
                    ),
                    const Text("Don’t have an account? Register"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Image _signInWith(String img) {
    return Image(
      image: AssetImage(img),
    );
  }

  SizedBox _divider(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.274,
      child: const Divider(
        thickness: 2,
        color: Colors.black,
      ),
    );
  }
}
