import 'package:app_design_mx/screens/register_screen.dart';
import 'package:app_design_mx/util/app_colors.dart';
import 'package:app_design_mx/util/img_res.dart';
import 'package:app_design_mx/widget/hi_button.dart';
import 'package:app_design_mx/widget/hitext.dart';
import 'package:app_design_mx/widget/inputtextfeild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.blue,
                  Colors.black.withOpacity(0.1),
                ],
              ),
              image: const DecorationImage(
                image: AssetImage(ImageRes.welcomeScreen),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 3.h,
                      ),
                      HIText("Sign in to your account"),
                      SizedBox(
                        height: 3.h,
                      ),
                      HGTextInputField(
                        controller: TextEditingController(),
                        hintText: 'Username',
                        borderColor: AppColors.yellow,
                        filledColor: AppColors.white,
                        textColor: AppColors.black.withOpacity(0.5),
                        hintFontColor: AppColors.grey,
                        hintFontWeight: FontWeight.w400,
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      HGTextInputField(
                        controller: TextEditingController(),
                        hintText: 'Password',
                        borderColor: AppColors.yellow,
                        filledColor: AppColors.white,
                        textColor: AppColors.black.withOpacity(0.5),
                        hintFontColor: AppColors.grey,
                        hintFontWeight: FontWeight.w400,
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      HIButton(
                        "Log In",
                        buttonColor: AppColors.darkpurple,
                        color: AppColors.yellow,
                        borderRadius: 3,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpScreen(),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      HIText(
                        "Foget password".toUpperCase(),
                        fontsize: 10,
                        fontWeight: FontWeight.w300,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
