import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'main.dart';

class PaymentTrack extends StatefulWidget {

  const PaymentTrack({super.key,});

  @override
  State<PaymentTrack> createState() => _PaymentTrackState();
}

class _PaymentTrackState extends State<PaymentTrack> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.h),
          child: Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w),
            child: AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios_new)),
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
              ],
            ),
          )),
      body: Padding(
        padding:  EdgeInsets.only(left: 16.w,right: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Container(
                child: Container(
                  height: 100.h,
                  width: 100.w,
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.green,
                    size: 100.sp,
                  ),
                ),
                height: 170.h,
                width: 170.w,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 3.w, color: Colors.green)),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding:  EdgeInsets.only(left: 15.w),
              child: Text(
                "Thank You",
                style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Roboto",
                    color: Colors.green),
              ),
            ),
            SizedBox(height: 20.h,),
            Padding(
              padding:  EdgeInsets.only(left: 15.w,right: 15.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("PAYMENT MADE",style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Roboto",color: Color(0xff2B4C59)),),
                  Text("\$${total}", style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Roboto",
                      color: Colors.green),)
                ],
              ),
            ),
            SizedBox(height: 30.h,),
            Padding(
              padding:  EdgeInsets.only(left: 15.w),
              child: Text(textAlign: TextAlign.start,
                "Well done Your payment is\n Successfuly done\n and your car is on its way.", style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Red Hat Mono",
                  letterSpacing: 2,
                  color: Color(0xff676767)),),
            ),
            SizedBox(height: 50.h,),
            Container(
              height: 50.h,
              width: double.infinity,
              decoration: BoxDecoration(
        border: Border.all(width: 2.w,color: Color(0xff2B4C59)),
                  borderRadius: BorderRadius.all(Radius.circular(10.r))),
              child: Center(
                child: Text(
                  "Track",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20.sp,
                      color: Color(0xff2B4C59)),
                ),
              ),
            ),
            SizedBox(height: 20.h,),
            GestureDetector(onTap: () {
              Navigator.pop(context);
            },
              child: Container(
                height: 50.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xff2B4C59),
                    borderRadius: BorderRadius.all(Radius.circular(10.r))),
                child: Center(
                  child: Text(
                    "Go Back",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 20.sp,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
