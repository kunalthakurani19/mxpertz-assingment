import 'package:app_design_mx/util/app_colors.dart';
import 'package:app_design_mx/util/appstyle.dart';
import 'package:app_design_mx/widget/hitext.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: HIText(
        'Welcome',
        style: AppStyles.inter.copyWith(
            fontSize: 24.0,
            fontWeight: FontWeight.w600,
            color: AppColors.black),
      ),
    );
  }
}
