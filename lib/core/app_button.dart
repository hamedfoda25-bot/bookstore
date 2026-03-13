import 'package:booksotre/core/theme/app_colors.dart';
import 'package:booksotre/gen/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';







class AppButton extends StatelessWidget {
  final Color? backgroundColor;
  final String text;
  const AppButton({super.key,this.backgroundColor, required this .text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 19.h),
      decoration: BoxDecoration(
        border:backgroundColor==null?null: Border.all(
          color: Colors.black,
        ) ,
        color: backgroundColor??AppColors.primaryColor,
        borderRadius: BorderRadius.circular(8.r)
      ),
      child: Text(text,style: TextStyle(
        fontSize: 15.sp,
        color: backgroundColor==null?Colors.white :Colors.black,
      ),
      ),


    );
  }
}
