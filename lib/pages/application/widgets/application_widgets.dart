import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_spinemotion/pages/home/home_page.dart';

import '../../../common/values/colors.dart';

Widget buildPage(int index){
  List<Widget> _widget = [
    const HomePage(),
    Center(child: Text("Home")),
    Center(child: Text("Camera")),
    Center(child: Text("Bell")),
  ];

  return _widget[index];
}

var bottomTabs = [
  BottomNavigationBarItem(
    label: "home",
    icon: SizedBox(
      width: 23.w,
      height: 23.h,
      child: Image.asset("assets/icons/home2.png",
      ),

    ),
    activeIcon: SizedBox(
      width: 23.w,
      height: 23.h,
      child: Image.asset("assets/icons/home2.png", color: AppColors.primaryElement,),
    ),

  ),
  BottomNavigationBarItem(

    label: "camera",
    icon: SizedBox(
      width: 23.w,
      height: 23.h,
      child: Image.asset("assets/icons/camera.png"),
    ),
    activeIcon: SizedBox(
      width: 23.w,
      height: 23.h,
      child: Image.asset("assets/icons/camera.png", color: AppColors.primaryElement,),
    ),
  ),
  BottomNavigationBarItem(

    label: "notification",
    icon: SizedBox(
      width: 23.w,
      height: 23.h,
      child: Image.asset("assets/icons/lonceng.png"),
    ),
    activeIcon: SizedBox(
      width: 23.w,
      height: 23.h,
      child: Image.asset("assets/icons/lonceng.png", color: AppColors.primaryElement,),
    ),



  )

];