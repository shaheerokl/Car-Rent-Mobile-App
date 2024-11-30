import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:new_cars/PaymentMethord.dart';

import 'main.dart';

class ConfirmProductDetails extends StatefulWidget {
  final String image;
  final String names;
  final String price;

  const ConfirmProductDetails(
      {super.key,
      required this.image,
      required this.names,
      required this.price});

  @override
  State<ConfirmProductDetails> createState() => _ConfirmProductDetailsState();
}

class _ConfirmProductDetailsState extends State<ConfirmProductDetails> {
  bool status=false;

  @override
  Widget build(BuildContext context) {
    List<String> ProductDetails = ["Selected", "Days", "Price", "Drivers Fee"];
    List<dynamic> ProductDetailsValu = ["1", "3", int.parse(widget.price), 50];
    total=ProductDetailsValu[2]+ProductDetailsValu[3];
    return Scaffold(backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 80.h),
        child: Padding(
          padding:  EdgeInsets.only(left: 16.w, right: 16.w),
          child: AppBar(backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios_new)),
            actions: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined))
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.only(left: 30.w),
            child: Text(
              "Selected",
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 20.sp,
                  fontFamily: "Roboto"),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 30.w, right: 30.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("needs a driver"),




                FlutterSwitch(
                  activeColor: Colors.green,
                  width: 30.0.w,
                  height: 15.0.h,
                  valueFontSize: 20.0.sp,
                  toggleSize: 15.0.sp,
                  value: status,
                  borderRadius: 30.0.r,
                  padding: 2.0,
                  showOnOff: false,
                  onToggle: (val) {
                    setState(() {
                      status = val;
                    });
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 10.w),
            child: Row(
              children: [
                Container(
                  height: 130.h,
                  width: 180.w,
                  child: Image.asset(
                    widget.image,
                  ),
                ),
                Container(
                  height: 130.h,
                  width: 150.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40.h,
                      ),
                      Text(widget.names,style: TextStyle(fontSize: 11.sp),),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        " \$${widget.price}",
                        style: TextStyle(color: Colors.red,fontSize: 11.sp),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "Rated",
                            style: TextStyle(
                              fontSize: 11.sp,
                              color: Color(0xffC8C8C8),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                  RatingBar.builder(
                    itemSize: 20.sp,
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,

                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey[300],
            indent: 16,
            endIndent: 16,
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 170.h,
            width: double.infinity,
            child: ListView.builder(
                itemCount: ProductDetails.length,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding:  EdgeInsets.only(top: 10.h),
                    child: Container(
                      height: 30.h,
                      child: Padding(
                        padding:  EdgeInsets.only(left: 30.w, right: 30.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              ProductDetails[index],
                              style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffA1A1A1)),
                            ),
                            Text(
                              ProductDetailsValu[index].toString(),
                              style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffA1A1A1)),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey[300],
            indent: 16,
            endIndent: 16,
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding:  EdgeInsets.only(left: 30.w, right: 30.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "TOTAL",
                  style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w700),
                ),
                Text(
                  "\$$total",
                  style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding:  EdgeInsets.only(left: 20.w),
            child: Text(
              "LOCATION",
              style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding:  EdgeInsets.only(left: 16.w, right: 16.w),
            child: Container(
              height: 40.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30.r)),
                color: Color(0xff2B4C5914),
              ),
              child: Padding(
                padding:  EdgeInsets.only(left: 30.w),
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "Street 203 House 348 City Kigali",
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 13.sp,
                          fontFamily: "inter",
                          color: Color(0xff010000)),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PaymentMethord()));
              },
              child: Container(
                height: 50.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  color: Color(0xff2B4C59),
                ),
                child: Center(
                    child: Text(
                  "Confirm",
                  style: TextStyle(
                      letterSpacing: 1,
                      fontFamily: "Inconsolata",
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w800,
                      color: Colors.white),
                )),
              )),


        ],
      ),
    );
  }
}
