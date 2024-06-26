import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_spinemotion/common/values/colors.dart';
import 'package:login_spinemotion/pages/front/widgets/front_wigets.dart';

import '../sign_in/widgets/sign_in_widget.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Image
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bgggw.png"), // Ganti dengan path gambar latar belakang
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent, // Atur background scaffold menjadi transparent agar latar belakang gambar bisa terlihat
          body: Container(
            margin: EdgeInsets.symmetric(vertical: 100.h, horizontal: 50.w),
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 200.h, right: 50.w),
                      child: Text(
                        "Healthy Bones, Brighter Future",
                        style: TextStyle(
                          color: AppColors.primaryThirdElementText,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "SpineMotion",
                        style: TextStyle(
                          color: AppColors.primaryThirdElementText,
                          fontSize: 25.sp,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                buildTwoButton(context, "Create Your New Account", "signUp"),
                buildTwoButton(context, "Sign in to Your Account", "signIn")
              ],
            ),
          ),
        ),
      ],
    );
  }
}
