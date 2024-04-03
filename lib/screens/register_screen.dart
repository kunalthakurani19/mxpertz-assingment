import 'package:app_design_mx/screens/home_page.dart';
import 'package:app_design_mx/util/app_colors.dart';
import 'package:app_design_mx/widget/hi_button.dart';
import 'package:app_design_mx/widget/hitext.dart';
import 'package:app_design_mx/widget/inputtextfeild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  static const String _title = 'Register with skenu';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.darkpurple,
        appBar: AppBar(
          title: const HIText(_title, style: TextStyle(color: AppColors.black)),
          backgroundColor: AppColors.yellow,
        ),
        body: const RegisterWidget(),
      ),
    );
  }
}

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({Key? key}) : super(key: key);

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            // Container(
            //     alignment: Alignment.center,
            //     padding: const EdgeInsets.all(10),
            //     child: const Text(
            //       'Sign in',
            //       style: TextStyle(fontSize: 20),
            //     )),
            SizedBox(
              height: 3.h,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: HGTextInputField(
                controller: TextEditingController(),
                hintText: 'Username',
                filledColor: AppColors.lightBlack,
                textColor: AppColors.white,
                hintFontColor: AppColors.white,
                hintFontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: const HGTextInputField(
                hintText: 'Email',
                filledColor: AppColors.lightBlack,
                textColor: AppColors.white,
                hintFontColor: AppColors.white,
                hintFontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: const HGTextInputField(
                hintText: 'Password',
                filledColor: AppColors.lightBlack,
                textColor: AppColors.white,
                hintFontColor: AppColors.white,
                hintFontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: const HGTextInputField(
                hintText: 'Confirm password',
                filledColor: AppColors.lightBlack,
                textColor: AppColors.white,
                hintFontColor: AppColors.white,
                hintFontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              children: [
                Checkbox(
                  value: agree,
                  activeColor: AppColors.grey,
                  hoverColor: AppColors.white,
                  checkColor: AppColors.black,
                  onChanged: (value) {
                    setState(() {
                      agree = value ?? false;
                    });
                  },
                ),
                const HIText(
                  'Agree terms and condition',
                  textcolor: AppColors.white,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            HIButton(
              "Register",
              buttonColor: AppColors.lightBlack,
              color: AppColors.white,
              borderRadius: 3,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
            ),
          ],
        ));
  }
}
