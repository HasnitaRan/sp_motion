import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_spinemotion/pages/education/widgets/base_text_widget.dart';
import 'package:login_spinemotion/pages/education/widgets/education_widgets.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({super.key});

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: buildAppBar(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 25.w),
                child: Column(
                  children: [
                    thumbNail(),
                    SizedBox(height: 15.h,),
                    reusableText("Informasi Kesehatan"),
                    // SizedBox(height: 15.h,),
                    // reusableText("Tulang belakang, juga dikenal sebagai columna vertebralis atau tulang punggung, merupakan bagian penting dari sistem rangka manusia. Tulang belakang terdiri dari serangkaian vertebrae yang terhubung satu sama lain oleh cakram intervertebral dan jaringan ikat."),
                    SizedBox(height: 15.h,),
                    boxScroll(),
                    SizedBox(height: 15.h,),
                    reusableText("Tulang belakang, juga dikenal sebagai columna vertebralis atau tulang punggung, merupakan bagian penting dari sistem rangka manusia. Tulang belakang terdiri dari serangkaian vertebrae yang terhubung satu sama lain oleh cakram intervertebral dan jaringan ikat.",

                    ),
                    // color: AppColors.primaryElementText,
                    // fontWeight: FontWeight.normal,
                    // fontSize: 11.sp




                  ],
                ),)
              ],
            ),
          ),
        ),
      ),


    );
  }
}
