import 'package:flutter/material.dart';
import 'package:flutter_payments/models/shopping_cart_model.dart';
import 'package:flutter_payments/views/payments/views/payment_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildShoppingCard(
  Clock clock,
  context,
) {
  return Padding(
    padding: EdgeInsets.all(4.sp),
    child: InkWell(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const PaymentScreen()));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3.0,
              blurRadius: 5.0,
            )
          ],
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              height: 92.h,
              width: 92.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                image: DecorationImage(
                  image: AssetImage(clock.imageUrl),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 8.h),
            Center(
              child: Text(
                '\$ ${clock.price}',
                style:
                    TextStyle(color: const Color(0xFFCC8053), fontSize: 16.sp),
              ),
            ),
            Center(
              child: Text(
                clock.name,
                overflow: TextOverflow.ellipsis,
                style:
                    TextStyle(color: const Color(0xFF575E67), fontSize: 14.sp),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
