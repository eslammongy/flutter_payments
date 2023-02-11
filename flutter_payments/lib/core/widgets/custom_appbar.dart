import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

buildCustomAppBar() {
  return AppBar(
    foregroundColor: Colors.black,
    backgroundColor: Colors.white,
    elevation: 0.0,
    centerTitle: true,
    title: Text(
      'Flutter Payments',
      style: TextStyle(
        fontSize: 20.0.sp,
        color: const Color(0xFF545D68),
      ),
    ),
    actions: [
      IconButton(
        icon: const Icon(
          Icons.notifications_none,
          color: Color(0xFF545D68),
        ),
        onPressed: () {},
      ),
    ],
  );
}
