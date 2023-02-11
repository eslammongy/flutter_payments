import 'package:flutter/material.dart';
import 'package:flutter_payments/core/widgets/custom_appbar.dart';
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
