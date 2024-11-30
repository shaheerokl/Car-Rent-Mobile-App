import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_cars/Confirm_Product_Details.dart';
import 'package:new_cars/Home.dart';

class ProductDetails extends StatefulWidget {
  final String image;
  final String price;
  final String names;

  const ProductDetails(
      {super.key,
      required this.image,
      required this.price,
      required this.names});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    List<String> fist_names = ["Transition", "Speed", "Model"];
    List<String> second_names = ["Automatic", "200kmph", "TopModel"];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 350.h,
                width: double.infinity,
                child: Image.asset(
                  "assets/background img.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: 90.h,
                width: double.infinity,
                child: Padding(
                  padding:  EdgeInsets.only(left: 16.w, right: 16.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top: 140.h),
                    child: Image.asset(widget.image),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding:  EdgeInsets.only(left: 16.w, right: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.names,
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto"),
                ),
                Text("\$${widget.price}",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Roboto",
                        color: Colors.red))
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.all(10.sp),
            child: Container(
              height: 90.h,
              width: double.infinity,
              child: ListView.builder(
                itemCount: fist_names.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding:  EdgeInsets.only(left: 5.w, right: 5.w),
                    child: Container(
                      height: 90.h,
                      width: 150.w,
                      child: Card(
                        semanticContainer: true,
                        elevation: 3,
                        color: Color(0xffF6F6F6),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(3.r))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(fist_names[index]),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(second_names[index])
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding:  EdgeInsets.only(left: 16.w),
            child: Text("RENDER", style: TextStyle(color: Color(0xff2B4C59))),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding:  EdgeInsets.only(left: 16.w, right: 40.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50.h,
                  width: 140.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/dp img.png",height: 50.h,width: 50.w,),
                      Text(
                        "Lorem Ipsum",
                        style: TextStyle(
                            fontFamily: "PT sans",
                            fontWeight: FontWeight.w400,
                            fontSize: 13.sp,
                            color: Color(0xff2B4C59)),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 30.h,
                  width: 70.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/Vector.png",height: 30.h,width: 30.w,),
                      Image.asset("assets/Vector1.png",height: 30.h,width: 30.w,),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding:  EdgeInsets.only(right: 40.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    height: 45.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(10.r))),
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ConfirmProductDetails(image: widget.image, names: widget.names, price: widget.price,

                                  )));
                        },
                        child: Text(
                          "BOOK NOW",
                          style: TextStyle(
                            fontFamily: "Imprima",
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        )))
              ],
            ),
          )
        ],
      ),
    );
  }
}
