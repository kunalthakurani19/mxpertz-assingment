import 'package:app_design_mx/screens/login_screen.dart';
import 'package:app_design_mx/screens/register_screen.dart';
import 'package:app_design_mx/util/app_colors.dart';
import 'package:app_design_mx/util/img_res.dart';
import 'package:app_design_mx/widget/hi_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HIButton(
                "log in with Email",
                buttonColor: AppColors.yellow,
                color: AppColors.black,
                borderRadius: 3,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 2.h,
              ),
              HIButton(
                "Register",
                buttonColor: AppColors.darkpurple,
                color: AppColors.white,
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
                height: 4.h,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
