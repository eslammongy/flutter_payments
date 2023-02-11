import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/home_screen_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(),
      body: const SafeArea(
        child: HomeScreenBody(),
      ),
    );
  }
}

buildCustomAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0.0,
    centerTitle: true,
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back,
        color: Color(0xFF545D68),
      ),
      onPressed: () {},
    ),
    title: Text(
      'Flutter Payments',
      style: TextStyle(
        fontSize: 24.0.sp,
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
