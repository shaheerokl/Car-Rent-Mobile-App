import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:new_cars/PaymentTrack.dart';

class Paymentpage extends StatefulWidget {
  const Paymentpage({super.key});

  @override
  State<Paymentpage> createState() => _PaymentpageState();
}

class _PaymentpageState extends State<Paymentpage> {
  bool status = false;

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
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Image.asset("assets/creditCard.png"),
            SizedBox(
              height: 30.h,
            ),
            TextField(
              textDirection: TextDirection.rtl,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(label: Text("Card Number:")),
            ),
            TextField(
              textDirection: TextDirection.rtl,
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                labelText: "Expired Date:",
              ),
            ),
            TextField(
              textDirection: TextDirection.rtl,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "CVV:",
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Rememer This Info:",style: TextStyle(fontSize: 14.sp),),
                FlutterSwitch(
                  activeColor: Color(0xff2B4C59),
                  width: 30.0.w,
                  height: 15.0.h,
                  valueFontSize: 10.0.sp,
                  toggleSize: 10.0.sp,
                  value: status,
                  borderRadius: 30.0.r,
                  padding: 2.0.sp,
                  // showOnOff: true,
                  onToggle: (val) {
                    setState(() {
                      status = val;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Divider(
              thickness: 1,
              color: CupertinoColors.inactiveGray,
            ),
            SizedBox(
              height: 80.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PaymentTrack()));
              },
              child: Container(
                height: 50.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xff2B4C59),
                    borderRadius: BorderRadius.all(Radius.circular(10.r))),
                child: Center(
                  child: Text(
                    "Pay",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 20.sp,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
