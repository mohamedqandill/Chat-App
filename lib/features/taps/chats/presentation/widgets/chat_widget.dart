import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/resources/assets_manager.dart';
import '../../../../../core/resources/styles_manager.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({this.isChat=false,super.key});

  final bool isChat;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          children: [
            Container(
              width: 55.w,
              child: Image.asset(
                ImageAssets.test,
                fit: BoxFit.cover,
              ),
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(50.sp)),
            ),
            SizedBox(width: 12.w,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mohamed Mostafa",
                    style: getBoldStyle(color: Colors.black)
                        .copyWith(fontSize: 17),
                  ),
                  isChat? Text(
                    "Message Me When You Online",
                    style: getSemiBoldStyle(color: Colors.black)
                        .copyWith(fontSize: 12),
                  ):SizedBox()
                ],
              ),
            ),
           isChat? Text(
              "Yesterday",
              style: getBoldStyle(color: Colors.black)
                  .copyWith(fontSize: 17),
            ):SizedBox()
          ],
        ),
        SizedBox(height: 20.h,),
        Divider(thickness: 1,color: Colors.grey,)
      ],
    );
  }
}
