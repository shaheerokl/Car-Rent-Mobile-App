import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_cars/Product_Details.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/car1.png",
      "assets/car2.png",
      "assets/car3.png",
      "assets/car4.png"
    ];
    List<String> names = ["TOYOTA", "LAMBORGHINI", "RANGE ROVER", "TESLA"];
    List<String> price = ["300", "150", "200", "250"];
    List<Color> colors = [
      Color(0xffCCBDBD),
      Color(0xffF6F6F6),
      Color(0xffFCC59B794),
      Color(0xffF8F8F8),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.notes)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined))
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.only(left: 16.w, right: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 158.h,
              width: double.infinity,
              child: Image.asset(
                "assets/wall img.png",
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Cars Available Near You",
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto'),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 380.h,
              width: double.infinity,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.7 .w/ 2.h,
                  crossAxisSpacing: 20, // Horizontal space between items
                  mainAxisSpacing: 15, // Vertical space between items
                ),
                itemCount: images.length, // Number of total items in the grid
                itemBuilder: (BuildContext context, int index) {
                  // Building the individual items
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ProductDetails(
                                image: images[index],
                                price: price[index], names: names[index],
                              )));
                    },
                    child: Card(
                      shadowColor: Colors.grey, color: colors[index],
                      elevation: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100.h,
                            child: Image.asset(images[index]),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: 16.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(names[index],
                                    style: TextStyle(
                                        color: Color(0xff2B4C59),
                                        fontFamily: "PT Sans",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11.sp)),
                                SizedBox(height: 5.h),
                                RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: "\$${price[index]}",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "PT Sans",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10.sp)),
                                  TextSpan(
                                      text: "/day",
                                      style: TextStyle(
                                          color: Color(0xffCCBDBD),
                                          fontFamily: "PT Sans",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10.sp))
                                ])),
                              ],
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(right: 16.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.favorite_border,
                                  color: Color(0xffC64949),
                                  size: 20.sp,
                                ),
                                Icon(
                                  Icons.arrow_circle_right,
                                  color: Color(0xff2B4C59),
                                  size: 20.sp,
                                )
                              ],
                            ),
                          )
                        ],
                      ), // Displaying item data
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
