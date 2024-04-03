import 'package:app_design_mx/util/app_colors.dart';
import 'package:app_design_mx/util/img_res.dart';
import 'package:app_design_mx/widget/hitext.dart';
import 'package:app_design_mx/widget/instaButton.dart';
import 'package:flutter/material.dart';

class ScreenProfile extends StatefulWidget {
  @override
  _ScreenProfileState createState() => _ScreenProfileState();
}

class _ScreenProfileState extends State<ScreenProfile> {
  static num initial_page = 0;
  PageController _myPage = PageController(initialPage: 0);
  @override
  // void initState() {
  //   super.initState();
  //   getUserInfo(http.Client());
  // }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body:
          // future: getUserInfo(http.Client()),

          Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 50,
            child: Row(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'kunalthakurani',
                    style: TextStyle(color: Colors.black, fontFamily: 'Sans', fontSize: 22),
                  ),
                ),
                const Expanded(child: SizedBox()),
                IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                    onPressed: () {})
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: 90,
                          width: 90,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.fromBorderSide(BorderSide(color: AppColors.black, width: 1)),
                              image: DecorationImage(image: AssetImage(ImageRes.p3), fit: BoxFit.cover)),
                        ),
                        Positioned(top: 70, left: 60, child: Small_Fab(onPress: () {}))
                      ],
                    ),
                  )
                ],
              ),
              const Expanded(
                  child: InstProfileText(
                num: 'Following',
                text: "0",
              )),
              const Expanded(
                  child: InstProfileText(
                num: 'Followers',
                text: "0",
              )),
              const Expanded(
                  child: InstProfileText(
                num: 'Post',
                text: "0",
              )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 2.0),
            child: Text(
              'Kunal Thakurani',
              style: TextStyle(color: AppColors.black, fontFamily: 'Sans'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 2),
            child: Text(
              "#kunal",
              style: TextStyle(color: Colors.blue[800], fontSize: 11),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(child: InstProfileButton(text: "Edit Profile", onPress: () {})),
              Expanded(child: InstProfileButton(text: "Promotions", onPress: () {})),
              Expanded(child: InstProfileButton(text: "Contacts", onPress: () {})),
            ],
          ),
          Container(
            decoration: BoxDecoration(border: Border.all(color: AppColors.grey, width: 1)),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: IconButton(
                        icon: Icon(
                          Icons.dashboard,
                          size: 20,
                          color: initial_page == 0 ? Colors.black : Colors.grey[300],
                        ),
                        onPressed: () {})),
                Expanded(
                    child: IconButton(
                        icon:
                            Icon(Icons.play_circle_outline, size: 20, color: initial_page == 1 ? Colors.black : Colors.grey[300]),
                        onPressed: () {})),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: PageView(
                controller: _myPage,
                onPageChanged: (number) {
                  setState(() {
                    initial_page = number;
                  });
                },
                children: <Widget>[
                  Center(
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                      itemBuilder: (context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(Radius.circular(20)),
                                border: Border.all(color: AppColors.grey, width: 1),
                                image: const DecorationImage(image: AssetImage(ImageRes.girldance), fit: BoxFit.contain)),
                          ),
                        );
                      },
                    ),
                  ),
                  Center(
                    child: Container(
                      child: const Text('No one has Tagged you yet'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));

    // else if (snapshot.hasError) {
    //   return NoConnection;
    // }
  }
}

class Small_Fab extends StatelessWidget {
  final Function onPress;
  Small_Fab({required this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 20,
        width: 20,
        decoration: const BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
        child: const Center(
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 20,
          ),
        ),
      ),
    );
  }
}
