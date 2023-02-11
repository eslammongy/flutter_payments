import 'package:flutter/material.dart';
import 'package:flutter_payments/models/shopping_cart_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_payments/views/home/widgets/shopping_cart.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 10.sp,
      ),
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.sp,
          mainAxisSpacing: 6.sp,
          childAspectRatio: 0.9.sp,
        ),
        itemBuilder: (context, index) {
          return buildShoppingCard(listClocks[index], context);
        },
        itemCount: listClocks.length,
      ),
    );
  }
}
