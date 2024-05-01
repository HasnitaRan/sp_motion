import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_spinemotion/pages/sign_in/widgets/sign_in_widget.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // buildThirdPartLogin(context),
                // reusableText("pp"),
                Container(
                  margin: EdgeInsets.only(top: 50.h),
                  padding: EdgeInsets.only(left: 25.w, right: 25.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      reusableText("Full Name"),
                      SizedBox(height: 5.h,),
                      buildTextField("Enter your full name", "email", "user"),
                      reusableText("Email"),
                      SizedBox(height: 5.h,),
                      buildTextField("Enter your email adress", "email", "mail"),
                      reusableText("Phone Number"),
                      SizedBox(height: 5.h,),
                      buildTextField("Enter your phone number", "email", "phone"),
                      reusableText("Password"),
                      SizedBox(height: 5.h,),
                      buildTextField("Enter your password", "email", "lock")
                    ],
                  ),
                ),
                forgotPassword(),
                // buildLogInAndRegisterButton("Login", "login"),
                buildLogInAndRegisterButton("Register", "register")
              ],
            ),
          ),
        ),
      ),

    );
  }


}
