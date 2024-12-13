import 'package:chat_app/core/resources/styles_manager.dart';
import 'package:chat_app/core/widget/custom_elevated_button.dart';
import 'package:chat_app/core/widget/home_screen_app_bar.dart';
import 'package:chat_app/features/taps/home/presentation/widgets/post_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/assets_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeScreenAppBar(
        title: "Home",
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10.sp),
              width: double.infinity,
              height: 180.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.sp),
              ),
              child: Image.asset(
                ImageAssets.test,
                fit: BoxFit.cover,
              ),
            ),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),

              shrinkWrap: true,

              separatorBuilder: (context, index) => SizedBox(
                height: 12.h,
              ),
              itemBuilder: (context, index) {
                return const PostWidget();
              }, itemCount: 6,
            )
          ],
        ),
      ),
    );
  }
}
