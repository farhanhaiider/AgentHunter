import 'package:flutter/material.dart';
import 'package:loginpage/checkout.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Price extends StatelessWidget {
  const Price({super.key});

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Positioned(
      left: 80,
      bottom: 0,
      child: Container(
          width: _width * 1.0,
          height: _height * 0.15,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 25,
                offset: Offset(0, 0),
                spreadRadius: 0,
              )
            ],
          ),
          padding: EdgeInsets.only(top: 60),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Column(
                  children: [
                    Text(
                      'Total Payment',
                      style: TextStyle(
                        color: Color(0xFF4D4D4D),
                        fontSize: 18,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w700,
                        height: 0.06,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 30),
                      child: Text(
                        '\$80.00',
                        style: TextStyle(
                          color: Color(0xFFBE191C),
                          fontSize: 25,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w800,
                          height: 0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 90,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.h),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const checkout()),
                    );
                  },
                  child: Container(
                    height: _height * 0.08,
                    width: _width * 0.40,
                    decoration: ShapeDecoration(
                      color: Color(0xFFBE191C),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Checkout',
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
              )
            ],
          )),
    );
  }
}
