import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/values/colors.dart';

Widget buildTwoButton(BuildContext context, String buttonName, String buttonType){
  return GestureDetector(
    onTap: (){
      if (buttonType == "signUp") {
        Navigator.of(context).pushNamedAndRemoveUntil("signUp", (route) => false);
      } else if (buttonType == "signIn") {
        Navigator.pushNamed(context, "signIn");
      }


    },
    child: Container(
      width: 325.w,
      height: 50.h,
      margin: EdgeInsets.only(left: 25.w, right: 25.w, top: buttonType=="login"?20.h:10.h),
      decoration: BoxDecoration(
          color: buttonType=="login"
              ?AppColors.primaryElement
              :AppColors.primaryBackground,
          borderRadius: BorderRadius.circular(15.w),
          border: Border.all(
            color: buttonType=="login"
                ?Colors.transparent
                :AppColors.primaryFourthElementText,
          ),
          boxShadow: [
            BoxShadow(
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 1),
                color: Colors.grey.withOpacity(0.1)
            )
          ]

      ),
      child: Center(child: Text(
        buttonName,
        style: TextStyle(
          fontSize: 10.sp,
          fontWeight: FontWeight.normal,
          color: buttonType=="login"
              ?AppColors.primaryBackground
              :AppColors.primaryText,
        ),
      ),
      ),
    ),
  );
}