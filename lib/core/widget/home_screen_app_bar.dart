import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/assets_manager.dart';
import '../resources/color_manager.dart';
import '../resources/font_manager.dart';
import '../resources/styles_manager.dart';
import '../resources/values_manager.dart';
import '../routes_manager/routes.dart';

class HomeScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool? automaticallyImplyLeading;
  final String title;

  const HomeScreenAppBar(
      {super.key, required this.title, this.automaticallyImplyLeading});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: AppBar(
          surfaceTintColor: Colors.white,
          automaticallyImplyLeading: automaticallyImplyLeading ?? false,
          title: Text(title,style: getBoldStyle(color: Colors.black).copyWith(
            fontSize: 25.sp
          ),),
          actions: [
            Icon(Icons.notifications_active,size: 25.sp,),
            SizedBox(width: 10.w,),
            Icon(Icons.search,size: 25.sp,),
          ]),
    );
  }

  @override
  Size get preferredSize => Size(0, 40.h);
}
