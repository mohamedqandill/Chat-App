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

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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

                Text(
                  'LOGIN',
                  style: getBoldStyle(color: ColorManager.black)
                      .copyWith(fontSize: FontSize.s32.sp),
                ),
                SizedBox(
                  height: AppSize.s50.h,
                ),
               const BuildTextField(
                  prefixIcon: Icon(Icons.email),
                  backgroundColor: Color(0xffF4F4F4),
                  hint: 'Email Address',
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: AppSize.s28.h,
                ),
                const BuildTextField(
                  prefixIcon: Icon(Icons.lock),
                  hint: 'Password',
                  backgroundColor: Color(0xffF4F4F4),
                  isObscured: true,
                  textInputType: TextInputType.text,
                ),
                SizedBox(
                  height: AppSize.s8.h,
                ),
                Row(
                  children: [
                    const Spacer(),
                    GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Forget password?',
                          style: getBoldStyle(color: ColorManager.black)
                              .copyWith(fontSize: FontSize.s18.sp),
                        )),
                  ],
                ),
                SizedBox(
                  height: AppSize.s60.h,
                ),
                Center(
                  child: SizedBox(
                    // width: MediaQuery.of(context).size.width * .8,
                    child: CustomElevatedButton(
                        // borderRadius: AppSize.s8,
                        isStadiumBorder: false,
                        label: 'Login',
                        backgroundColor: Color(0xff8E6CEF),
                        textStyle: getBoldStyle(
                            color: Colors.white, fontSize: AppSize.s20),
                        onTap: () {
                          Navigator.pushNamed(context, Routes.home);
                        }),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account?',
                      style: getMediumStyle(color: ColorManager.black)
                          .copyWith(fontSize: FontSize.s16.sp),
                    ),
                    SizedBox(
                      width: AppSize.s8.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.signup);
                      },
                      child: Text(
                        'Create Account',
                        style: getBoldStyle(color: ColorManager.black)
                            .copyWith(fontSize: FontSize.s18.sp),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
