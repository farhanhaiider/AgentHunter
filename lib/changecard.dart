import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loginpage/checkout.dart';

class changecard extends StatelessWidget {
  const changecard({super.key});

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(children: [
                Padding(padding: EdgeInsetsDirectional.only(top: 60)),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(children: [
                    BackButton(),
                    SizedBox(
                      width: 80,
                    ),
                    Text(
                      'Add New Card',
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
                  padding: EdgeInsets.only(
                    left: 30.w,
                    top: 20.h,
                    right: 30.w,
                  ),
                  child: Container(
                    height: _height * 0.06,
                    width: _width * 0.90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 235, 230, 230),
                            blurRadius: 10.0,
                            spreadRadius: 0.5,
                            offset: Offset(0.0, 1.0))
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 3,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        border: const OutlineInputBorder(),
                        hintText: 'Card Number',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    top: 20,
                    right: 30,
                  ),
                  child: Container(
                    height: _height * 0.06,
                    width: _width * 0.90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 235, 230,
                                230), // Change color of the shadow
                            blurRadius: 10.0,
                            spreadRadius: 0.5,
                            offset: Offset(0, 1.0))
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 3,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        border: const OutlineInputBorder(),
                        hintText: 'CardHolder Name',
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 30.w,
                        top: 20.h,
                        right: 18.w,
                      ),
                      child: Container(
                        height: _height * 0.06,
                        width: _width * 0.40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 235, 230,
                                    230), // Change color of the shadow
                                blurRadius: 10.0,
                                spreadRadius: 0.5,
                                offset: Offset(0, 1.0))
                          ],
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 1,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 3,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            border: const OutlineInputBorder(),
                            hintText: 'Expiry Date',
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 20.h,
                        right: 30.w,
                      ),
                      child: Container(
                        height: _height * 0.06,
                        width: _width * 0.40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 235, 230,
                                    230), // Change color of the shadow
                                blurRadius: 10.0,
                                spreadRadius: 0.5,
                                offset: Offset(0, 1.0))
                          ],
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 1,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 3,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            border: const OutlineInputBorder(),
                            hintText: 'CVV',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 470,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => checkout()),
                    );
                  },
                  child: Container(
                    width: _width * 0.90,
                    height: _height * 0.06,
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
                                      text: 'Add Card',
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
