import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widget/home_screen_app_bar.dart';
import '../../chats/presentation/widgets/chat_widget.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeScreenAppBar(title: "Users"),
      body: Padding(
        padding: EdgeInsets.all(25.0.sp),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(itemBuilder: (context, index) {

                return ChatWidget(
                  isChat: false,
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
