import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:new_cars/PaymentPage.dart';
import 'package:new_cars/main.dart';

class PaymentMethord extends StatefulWidget {
  const PaymentMethord({super.key});

  @override
  State<PaymentMethord> createState() => _PaymentMethordState();
}

class _PaymentMethordState extends State<PaymentMethord> {
  bool status=false;

  @override

  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.h),
          child: Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w),
            child: AppBar(backgroundColor: Colors.white,
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios_new)),
              actions: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined)),
              ],
            ),
          )),
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text("Payment Methods"),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 70.h,
                  width: 100.w,
                  child: Image.asset("assets/logo2.png"),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.w, color: Colors.yellow),
                      borderRadius: BorderRadius.all(Radius.circular(5.r))),
                ),
                Container(
                  height: 100.h,
                  width: 100.w,
                  child: Image.asset("assets/logo3.png"),
                ),
                Container(
                  height: 50.h,
                  width: 100.w,
                  child: Padding(
                    padding: EdgeInsets.all(8.sp),
                    child: Image.asset("assets/logo1.png"),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.w,
                        color: Colors.blueAccent,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5.r))),
                ),
              ],
            ),
            SizedBox(height: 30.h,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text("OUR CODE",style: TextStyle(fontSize: 15.sp,fontWeight:FontWeight.w700,color:Color(0xff2B4C59) ),),
                Text("1001110",style: TextStyle(fontSize: 15.sp,fontWeight:FontWeight.w700,color:Color(0xff838383) ),)
              ],
            ),
            SizedBox(height: 20.h,),
            TextField(textDirection:TextDirection.rtl,keyboardType: TextInputType.name,decoration: InputDecoration(label:Text("Sim Names:")),),
            TextField(textDirection: TextDirection.rtl,keyboardType: TextInputType.number,decoration: InputDecoration(labelText: "Phone Number:",)

            ),
          SizedBox(height: 15.h,),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                Text("Rememer This Info:",style: TextStyle(fontSize: 14.sp),),
                FlutterSwitch(
                  activeColor: Color(0xff2B4C59),
                  width: 30.0.w,
                  height: 15.0.h,
                  valueFontSize: 10.0.sp,
                  toggleSize: 10.0,
                  value: status,
                  borderRadius: 30.0.r,
                  padding: 2.0,
                  // showOnOff: true,
                  onToggle: (val) {
                    setState(() {
                      status = val;
                    });
                  },
                ),

              ],
            ),
            SizedBox(height: 10.h,),
            Divider(thickness: 1,color: CupertinoColors.inactiveGray,),
            SizedBox(height: 120.h,),
            GestureDetector(onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Paymentpage()));
            },
              child: Container(
              height: 50.h,
                width: double.infinity,
                decoration: BoxDecoration(color:Color(0xff2B4C59) , borderRadius: BorderRadius.all(Radius.circular(10.r))),
                child: Center(
                  child: Text("Pay",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20.sp,color: Colors.white),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
