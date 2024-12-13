import 'package:chat_app/core/resources/styles_manager.dart';
import 'package:chat_app/core/widget/home_screen_app_bar.dart';
import 'package:chat_app/features/taps/chats/presentation/widgets/chat_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/assets_manager.dart';


class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeScreenAppBar(title: "Chats"),
      body: Padding(
        padding: EdgeInsets.all(25.0.sp),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(itemBuilder: (context, index) {
              
                return ChatWidget(
                  isChat: true,
                );
              
              },
                  separatorBuilder: (context, index) =>
                    SizedBox(height: 10.h,)
                  ,
                  itemCount: 5),
            )

          ],
        ),
      ),
    );
  }
}
