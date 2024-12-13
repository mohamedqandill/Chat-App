import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/resources/assets_manager.dart';
import '../../../../../core/resources/styles_manager.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.sp),
            color: Colors.white.withOpacity(0.2),
            shape: BoxShape.rectangle,
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey,
                  blurStyle: BlurStyle.outer,
                  blurRadius: 7
              )
            ]
        ),
        padding: EdgeInsets.all(10.sp),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    child: Image.asset(ImageAssets.test),
                    radius: 40.sp,

                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Mohamed Mostafa",
                            style: getMediumStyle(color: Colors.black)
                                .copyWith(fontSize: 18.sp),
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          const CircleAvatar(
                              radius: 11,
                              backgroundColor: Colors.blue,
                              child: Center(
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                  )))
                        ],
                      ),
                      Text(
                        "Decemper 31,2024 at 11:26",
                        style: getRegularStyle(color: Colors.black)
                            .copyWith(fontSize: 14.sp),
                      )
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.linear_scale_sharp)
                ],
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Text(
                "Mohamed Mohamed MohamedMohamed Mohamed MohamedvMohamedMohamedMohamedMohamedMohamedvMohamedMohamedvvvMohamed MohamedMohamed Mohamed Mohamedv v Mohamed v Mohamed Mohamedv Mohamed"
                    "",
                style: getSemiBoldStyle(color: Colors.black)
                    .copyWith(fontSize: 16),
              ),
              SizedBox(
                height: 7.h,
              ),
              Row(
                children: [
                  Text(
                    "#Flutter",
                    style: getRegularStyle(color: Colors.blue),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "#MohamedMostafa",
                    style: getRegularStyle(color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              Container(
                height: 100.h,
                width: double.infinity,
                child: Image.asset(
                  ImageAssets.test,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.heart_broken_rounded),
                      Text("120")
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.comment),
                      const Text("120"),
                      SizedBox(width:5.w),
                      const Text("Comments"),
                    ],
                  )
                ],
              ),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              Row(
                children: [
                  CircleAvatar(
                    child: Image.asset(ImageAssets.test),
                    radius: 25,
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Column(
                    children: [
                      Text(
                        "Write Comment...",
                        style: getLightStyle(color: Colors.black)
                            .copyWith(fontSize: 14.sp),
                      ),
                    ],
                  ),
                  Spacer(),
                  const Row(
                    children: [
                      Icon(Icons.heart_broken_rounded),
                      Text("like")
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
