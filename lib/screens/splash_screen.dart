import 'package:app_design_mx/util/app_colors.dart';
import 'package:app_design_mx/util/img_res.dart';
import 'package:app_design_mx/util/routes/routes_name.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // SplashServices splashServices = SplashServices();

  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  void _navigateToNextScreen() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, RoutesName.onbording);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.yellow,
        child: Center(
          child: Image.asset(ImageRes.splashLogo),
        ),
      ),
    );
  }
}
