import 'package:chat_app/core/routes_manager/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';
import '../../../core/resources/styles_manager.dart';
import '../../../core/resources/values_manager.dart';
import '../../../core/widget/custom_elevated_button.dart';
import '../../../core/widget/home_screen_app_bar.dart';
import '../../../core/widget/main_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30.h,
                ),


                // Center(child: SvgPicture.asset(SvgAssets.routeLogo)),
                SizedBox(
                  height: AppSize.s65.h,
                ),
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Icon(Icons.arrow_back_ios_new, size: 30,
                    color: ColorManager.purbble,),
                ),

                Text(
                  'REGISTER',
                  style: getBoldStyle(color: ColorManager.black)
                      .copyWith(fontSize: FontSize.s32.sp),
                ),
                SizedBox(
                    height: AppSize.s40.h
                ),

                const BuildTextField(
                  prefixIcon: Icon(Icons.person),
                  backgroundColor: Color(0xffF4F4F4),
                  hint: 'User Name',
                  textInputType: TextInputType.emailAddress,
                ), SizedBox(
                    height: AppSize.s14.h
                ),
                const BuildTextField(
                  prefixIcon: Icon(Icons.email),
                  backgroundColor: Color(0xffF4F4F4),
                  hint: 'Email Address',
                  textInputType: TextInputType.emailAddress,
                ), SizedBox(
                    height: AppSize.s14.h
                ),

                const BuildTextField(
                  prefixIcon: Icon(Icons.lock),
                  hint: 'Password',
                  backgroundColor: Color(0xffF4F4F4),
                  isObscured: true,
                  textInputType: TextInputType.text,
                ), SizedBox(
                    height: AppSize.s14.h
                ),
                const BuildTextField(
                  prefixIcon: Icon(Icons.phone),
                  backgroundColor: Color(0xffF4F4F4),
                  hint: 'Phone',
                  textInputType: TextInputType.phone,
                ),
                SizedBox(
                  height: AppSize.s8.h,
                ),

                SizedBox(
                  height: AppSize.s40.h,
                ),
                Center(
                  child: SizedBox(
                    // width: MediaQuery.of(context).size.width * .8,
                    child: CustomElevatedButton(
                      // borderRadius: AppSize.s8,
                        isStadiumBorder: false,
                        label: 'Create Account',
                        backgroundColor: Color(0xff8E6CEF),
                        textStyle: getBoldStyle(
                            color: Colors.white, fontSize: AppSize.s20),
                        onTap: () {}),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
