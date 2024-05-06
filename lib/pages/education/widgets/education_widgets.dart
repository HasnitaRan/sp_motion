import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_spinemotion/pages/sign_in/widgets/sign_in_widget.dart';


import '../../../common/values/colors.dart';


AppBar buildAppBar(){
  return AppBar(
    title: reusableText("Informasi Kesehatan"),
  );
}

Widget thumbNail(){
  return Container(
    width: 325.w,
    height: 200.h,
    decoration: const BoxDecoration(

        image: DecorationImage(
          fit: BoxFit.fitWidth,
          image: AssetImage(
              "assets/images/edu.png"
          ),

        )
    ),
  );
}

Widget menuView(){
  return Container(
    width: 325.w,

    child: Row(
      children: [
        GestureDetector(
          onTap: (){},
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h
            ),
            decoration: BoxDecoration(
              color: AppColors.primaryElement,
              borderRadius: BorderRadius.circular(7.w)
            ),
            child: reusableText("Author Page",
              // color: AppColors.primaryElementText,
              // fontWeight: FontWeight.normal,
              // fontSize: 10.sp
          )
        )
        )
      ],
    ),

  );
}

Widget boxScroll(){
  return Container(
    height: 100, // Sesuaikan tinggi sesuai kebutuhan
    decoration: BoxDecoration(
      color: Colors.grey[200], // Warna latar belakang
      borderRadius: BorderRadius.circular(10), // Ubah sesuai kebutuhan
    ),
    child: ListView(
      scrollDirection: Axis.horizontal, // Menyeting agar ListView berjalan secara horizontal
      children: [
        Container(
          width: 150, // Sesuaikan lebar konten sesuai kebutuhan
          margin: EdgeInsets.all(10), // Sesuaikan jarak antar konten sesuai kebutuhan
          decoration: BoxDecoration(
            color: Colors.blue, // Warna konten
            borderRadius: BorderRadius.circular(10), // Ubah sesuai kebutuhan
          ),
          child: Center(
            child: Text(
              'Content 1',
              style: TextStyle(color: Colors.white), // Sesuaikan gaya teks sesuai kebutuhan
            ),
          ),
        ),
        Container(
          width: 150, // Sesuaikan lebar konten sesuai kebutuhan
          margin: EdgeInsets.all(10), // Sesuaikan jarak antar konten sesuai kebutuhan
          decoration: BoxDecoration(
            color: Colors.green, // Warna konten
            borderRadius: BorderRadius.circular(10), // Ubah sesuai kebutuhan
          ),
          child: Center(
            child: Text(
              'Content 2',
              style: TextStyle(color: Colors.white), // Sesuaikan gaya teks sesuai kebutuhan
            ),
          ),
        ),
        Container(
          width: 150, // Sesuaikan lebar konten sesuai kebutuhan
          margin: EdgeInsets.all(10), // Sesuaikan jarak antar konten sesuai kebutuhan
          decoration: BoxDecoration(
            color: Colors.green, // Warna konten
            borderRadius: BorderRadius.circular(10), // Ubah sesuai kebutuhan
          ),
          child: Center(
            child: Text(
              'Content 3',
              style: TextStyle(color: Colors.white), // Sesuaikan gaya teks sesuai kebutuhan
            ),
          ),
        ),
        // Tambahkan container lain sesuai kebutuhan
      ],
    ),
  );

}

Widget boxScrollDown(){
  return Container(
    width: 200, // Sesuaikan lebar container sesuai kebutuhan
    height: 300, // Sesuaikan tinggi container sesuai kebutuhan
    decoration: BoxDecoration(
      color: Colors.grey[200], // Warna latar belakang
      borderRadius: BorderRadius.circular(10), // Ubah sesuai kebutuhan
    ),
    child: ListView(
      scrollDirection: Axis.vertical, // Menyeting agar ListView berjalan secara vertikal
      children: [
        Container(
          height: 100, // Sesuaikan tinggi konten sesuai kebutuhan
          margin: EdgeInsets.all(10), // Sesuaikan jarak antar konten sesuai kebutuhan
          decoration: BoxDecoration(
            color: Color.fromRGBO(59, 120, 138, 1), // Warna konten
            borderRadius: BorderRadius.circular(10), // Ubah sesuai kebutuhan
          ),
          child: Center(
            child: Text(
              'Slide 1',
              style: TextStyle(color: Colors.white), // Sesuaikan gaya teks sesuai kebutuhan
            ),
          ),
        ),
        Container(
          height: 100, // Sesuaikan tinggi konten sesuai kebutuhan
          margin: EdgeInsets.all(10), // Sesuaikan jarak antar konten sesuai kebutuhan
          decoration: BoxDecoration(
            color: Colors.green, // Warna konten
            borderRadius: BorderRadius.circular(10), // Ubah sesuai kebutuhan
          ),
          child: Center(
            child: Text(
              'Slide 2',
              style: TextStyle(color: Colors.white), // Sesuaikan gaya teks sesuai kebutuhan
            ),
          ),
        ),
        // Tambahkan container lain sesuai kebutuhan
      ],
    ),
  );

}