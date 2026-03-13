import 'package:booksotre/core/app_button.dart';
import 'package:booksotre/gen/assets.gen.dart';
import 'package:booksotre/gen/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: Assets.images.welcomebackground
                .image()
                .image, fit:
            BoxFit.cover
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 30.h),
              Row(
                children: [
                  IconButton(onPressed: () {
                    if (context.locale.languageCode == "ar") {
                      context.setLocale(Locale("en"));
                    } else {
                      context.setLocale(Locale("ar"));
                    }
                  }, icon: Icon(Icons.language)),
                ],
              ),
              SizedBox(height: 105.h,),
              Assets.images.splash.image(),
              SizedBox(height: 28.h,),
              Expanded(
                child: Text(LocaleKeys.OrderNow.tr(),
                  style: TextStyle(
                    fontSize: 20.sp,
                    color:Colors.white,
                  ),


                ),
              ),


              AppButton(),
              SizedBox(height: 15.h,),
              AppButton(
                backgroundColor:
                Colors.white,
              ),
              SizedBox(height: 94.h,)


            ],
          ),

        ),
        );
    }
}
//flutter pub run easy_localization:generate -S assets/translations -O lib/gen/translations -o locale_keys.g.dart -f keys