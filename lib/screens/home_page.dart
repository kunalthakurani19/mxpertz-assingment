import 'package:app_design_mx/screens/message_screen.dart';
import 'package:app_design_mx/screens/profile_screen.dart';
import 'package:app_design_mx/util/app_colors.dart';
import 'package:app_design_mx/util/img_res.dart';
import 'package:app_design_mx/widget/hi_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.favorite),
            icon: Icon(Icons.favorite_outline),
            label: 'favorite',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.share_outlined),
            icon: Icon(Icons.share_outlined),
            label: 'share',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.message),
            icon: Icon(Icons.message_outlined),
            label: 'message',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.people),
            icon: Icon(Icons.people_outline),
            label: 'Profile',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageRes.welcomeScreen),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: HIButton(
                  "click here",
                  buttonColor: AppColors.lightBlack,
                  color: AppColors.white,
                  borderRadius: 3,
                  onPressed: () {
                    showBottomSheet();
                  },
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageRes.girldance),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
        const MessageScreen(),
        Container(
          child: ScreenProfile(),
        ),
      ][currentPageIndex],
    );
  }

  showBottomSheet() {
    showModalBottomSheet(
      isScrollControlled: false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.only(
          topEnd: Radius.circular(25),
          topStart: Radius.circular(25),
        ),
      ),
      backgroundColor: AppColors.darkpurple,
      context: context,
      builder: (context) {
        return SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                HIButton(
                  "Language",
                  buttonColor: AppColors.lightBlack,
                  color: AppColors.white,
                  borderRadius: 3,
                  onPressed: () {},
                  isIcon: true,
                  imgURL: ImageRes.language,
                ),
                SizedBox(
                  height: 2.h,
                ),
                HIButton(
                  "Privacy",
                  buttonColor: AppColors.lightBlack,
                  color: AppColors.white,
                  borderRadius: 3,
                  onPressed: () {},
                  isIcon: true,
                  imgURL: ImageRes.privacy,
                ),
                SizedBox(
                  height: 2.h,
                ),
                HIButton(
                  "Terms & Conditions",
                  buttonColor: AppColors.lightBlack,
                  color: AppColors.white,
                  borderRadius: 3,
                  onPressed: () {},
                  isIcon: true,
                  imgURL: ImageRes.terms,
                ),
                SizedBox(
                  height: 2.h,
                ),
                HIButton(
                  "Support",
                  buttonColor: AppColors.lightBlack,
                  color: AppColors.white,
                  borderRadius: 3,
                  onPressed: () {},
                  isIcon: true,
                  imgURL: ImageRes.support1,
                ),
                SizedBox(
                  height: 2.h,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
