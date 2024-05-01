
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/values/colors.dart';

AppBar buildAppBar(){
  return AppBar(
    title: Container(
      margin: EdgeInsets.only(left: 7.w, right: 7.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 15.w,
            height: 12.h,
            child: Image.asset("assets/icons/menu.png"),


          ),
          GestureDetector(
            child: Container(
              width: 40.w,
              height: 40.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/icons/person.png"
                    ))
              ),
            ),
          )
        ],
      ),
    ),

  );
}

Widget homePageText(String text, {Color color=AppColors.primaryText,int top=20}){
  return Container(
    margin: EdgeInsets.only(top: top.h),
    child: Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 20.sp,
        fontWeight: FontWeight.bold
      ),
    ),
  );
}

Widget boxInfo(BuildContext context){
  double screenWidth = MediaQuery.of(context).size.width;
  return Container(
        width: screenWidth,
        height: 200.h,
        decoration: BoxDecoration(
          color: AppColors.primaryElementBg2,
          border: Border.all(color: AppColors.primaryFourthElementText),
          borderRadius: BorderRadius.all(Radius.circular(15.h)),
        ),
        padding: EdgeInsets.all(10.w),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            homePageText(
              "Hello Sinthia !",
              color: AppColors.primaryThirdElementText,
              top: 20,
            ),
            SizedBox(height: 10.h), // Spacer between "Hello Sinthia" and description text
            Text(
              "Cek Postur Anda, Perbaiki Kesehatan Tulang Anda Mulai Sekarang",
              style: TextStyle(
                color: AppColors.primaryThirdElementText,
                fontSize: 12.sp,
              ),
            ),
            SizedBox(height: 15.h,),

            Row(

              children: [
                SizedBox(
                  width: 2.w,
                  height: 50.h,
                ),
                ElevatedButton(
                    onPressed: () {
                      // Add button onPressed logic here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryElementBg,

                      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: BoxDecoration(
                            color: AppColors.primaryElementBg,
                            image: DecorationImage(
                              image: AssetImage('assets/icons/camera.png'), // Replace with your image path
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                    SizedBox(
                      width: 8.w,),

                    Text(
                      'Cek Kesehatan Tulang',
                      style: TextStyle(fontSize: 12.0,
                      color: AppColors.primaryText),
                    ),
                  ],
                ))

              ],
            ),
          ],
        ),
  );
}

Widget healthMenuGrid(BuildContext context) {
  return Expanded(
    child: GridView.count(
      crossAxisCount: 2,
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[200],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/dokter.png',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
                SizedBox(height: 10),
                Text('Informasi Kesehatan'),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[200],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/yoga-treatment.png',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
                SizedBox(height: 10),
                Text('Gerakan Terapi'),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}


