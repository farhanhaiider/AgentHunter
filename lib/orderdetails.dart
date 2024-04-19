import 'package:flutter/material.dart';
import 'package:loginpage/Components/bar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class orderdetail extends StatelessWidget {
  orderdetail({super.key});

  void _showItemDetailsDialog(BuildContext context, String itemName,
      String itemImage, String itemPrice) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Container(
                height: 400,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Text(
                      'Your opinion matters to us!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF4D4D4D),
                        fontSize: 18,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w800,
                        height: 0,
                        letterSpacing: -0.36,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // Second line of text
                    Text(
                      'Rate Product',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFB9B9B9),
                        fontSize: 15,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        height: 0,
                        letterSpacing: -0.30,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 20,
                        right: 10,
                      ),
                      child: Container(
                        height: 105,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: const Color.fromARGB(255, 235, 230, 230),
                                blurRadius: 10.0,
                                spreadRadius: 0.5,
                                offset: Offset(0.0, 1.0))
                          ],
                        ),
                        child: TextField(
                          minLines: 2,
                          maxLines: 3,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 1,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 3,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            border: const OutlineInputBorder(),
                            hintText: ' Request Description',
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => bar(index: 0)),
                        );
                      },
                      child: Container(
                        height: 60,
                        width: 280,
                        decoration: ShapeDecoration(
                          color: Color(0xFFBE191C),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Rate Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w600,
                              height: 0.07,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Maybe latter',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFB9B9B9),
                        fontSize: 15,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        height: 0,
                        letterSpacing: -0.30,
                      ),
                    )
                  ],
                ),
              ));
        });
  }

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(children: [
                Padding(padding: EdgeInsetsDirectional.only(top: 40)),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(children: [
                    BackButton(),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      'Order Details',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    )
                  ]),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 20.h, right: 280.w),
                    child: Text(
                      'Status',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 30.h, right: 250.w, left: 30.w),
                  child: Row(
                    children: [
                      Container(
                        width: 38,
                        height: 38,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 38,
                                height: 38,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFBE191C),
                                  shape: OvalBorder(),
                                ),
                                child: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        'Delivered',
                        style: TextStyle(
                          color: Color(0xFF4D4D4D),
                          fontSize: 18,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20.h)),
                Container(
                  height: _height * 0.003,
                  width: _width * 0.90,
                  color: Color.fromARGB(255, 231, 224, 224),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 230),
                  child: Text(
                    'Order Details',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.h, right: 210.w),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Order ID: ',
                          style: TextStyle(
                            color: Color(0xFF4D4D4D),
                            fontSize: 16,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: '#3475623',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.h, right: 155.w),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Delivery Date: ',
                          style: TextStyle(
                            color: Color(0xFF4D4D4D),
                            fontSize: 16,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: '2 Sep - 5 Sep',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.h, right: 250.w),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Total: ',
                          style: TextStyle(
                            color: Color(0xFF4D4D4D),
                            fontSize: 16,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: '\$40.00',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 30)),
                Container(
                  height: 2,
                  width: 340,
                  color: const Color.fromARGB(255, 218, 211, 211),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 50.h, right: 170.w),
                    child: Text(
                      'Payment & Shipping',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 20.h, right: 220.w),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Payment Method \n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: 'Master Card',
                          style: TextStyle(
                            color: Color(0xFF4D4D4D),
                            fontSize: 16,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: SizedBox(
                    width: 337,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Shipping Address \n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Unit 15, York Farm Business Centre, Watling St, Towcester',
                            style: TextStyle(
                              color: Color(0xFF4D4D4D),
                              fontSize: 16,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
                GestureDetector(
                  onTap: () {
                    _showItemDetailsDialog(
                      context,
                      '',
                      '',
                      '',
                    );
                  },
                  child: Container(
                    width: _width * 0.90,
                    height: _height * 0.05,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22, vertical: 20),
                    decoration: ShapeDecoration(
                      color: Color(0xFFBE191C),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Rate Product',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: 'Manrope',
                                        fontWeight: FontWeight.w600,
                                        height: 0.07,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            )));
  }
}
