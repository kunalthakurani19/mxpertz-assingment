import 'package:app_design_mx/chat_screen.dart';
import 'package:app_design_mx/util/app_colors.dart';
import 'package:app_design_mx/util/img_res.dart';
import 'package:app_design_mx/widget/hitext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  static const String _title = 'Comment';

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
        body: const TestPage(),
      ),
    );
  }
}

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  List<Data> dataList = [
    Data(
        name: "ronaldferguson",
        description: "Dummy long description",
        imageURL: ImageRes.p1),
    Data(
      name: "ronaldferguson",
      description: "Dummy long description",
      imageURL: ImageRes.p2,
    ),
    Data(
        name: "ronaldferguson",
        description: "Dummy long description",
        imageURL: ImageRes.p3),
    Data(
        name: "ronaldferguson",
        description: "Dummy long description",
        imageURL: ImageRes.p4),
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => (const ChatScreen()),
            ),
          );
        },
        child: SizedBox(
          width: width,
          height: height,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: dataList.map((data) {
              return Container(
                width: width,
                height: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: AppColors.grey)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(data.imageURL))),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 2.h,
                        ),
                        HIText(
                          data.name,
                          style: const TextStyle(color: Colors.black),
                        ),
                        Expanded(
                          child: HIText(
                            data.description,
                            style: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    // Text(data.date.toString()),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class Data {
  String name;
  String imageURL;
  String description;

  Data({required this.name, required this.imageURL, required this.description});
}
