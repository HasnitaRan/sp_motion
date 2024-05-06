import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_spinemotion/common/values/colors.dart';

import 'widgets/home_page_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(171, 176, 180, 1),
      appBar: buildAppBar(),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.h, horizontal: 25.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // homePageText(
            //     "Hello Sinthia !",
            //       color:AppColors.primaryThirdElementText,
            //       top: 20
            // ),
            // Container(
            //   margin: EdgeInsets.only(top: 5.h),
            //   child: Text(
            //     "Cek Postur Anda, Perbaiki Kesehatan Tulang Anda  Mulai Sekarang",
            //     style: TextStyle(
            //         color: AppColors.primaryThirdElementText,
            //         fontSize: 14.sp,
            //     ),
            //   ),
            // ),
            boxInfo(context),
            SizedBox(height: 120),
            healthMenuGrid(context)

          ],

        ),
      ),
    );
  }
}
