import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cartitem extends StatelessWidget {
  const Cartitem({super.key});

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Checkbox(
          value: true,
          activeColor: Color(0xFFBE191C),
          onChanged: (val) {},
        ),

        //     mainAxisAlignment: MainAxisAlignment.start,
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Container(
        //   width: 28.50,
        //   height: 2.50,
        //   child: Column(
        //     mainAxisSize: MainAxisSize.min,

        //       // Cntainer(
        //       //   width: 24.50,
        //       //   height: 24.50,
        //       //   decoration: ShapeDecoration(
        //       //     color: Color(0xFFBE191C),
        //       //     shape: RoundedRectangleBorder(
        //       //       side: BorderSide(
        //       //         width: 2,
        //       //         color: Color(0xFFBE191C),
        //       //       ),
        //       //       borderRadius: BorderRadius.circular(7),
        //       //     ),
        //       //     shadows: [
        //       //       BoxShadow(
        //       //         color: Color(0x3F000000),
        //       //         blurRadius: 20,
        //       //         offset: Offset(0, 4),
        //       //         spreadRadius: -10,
        //       //       )
        //       //     ],
        //       //   ),
        //       //   child: Icon(
        //       //     Icons.check,
        //       //     color: Colors.white,
        //       //   ),
        //       // ),
        //     ],
        //   ),
        // ),
        Padding(padding: EdgeInsets.only(left: 10)),
        Container(
          width: _width * 0.30,
          height: _height * 0.135,
          decoration: ShapeDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage(
                'assets/images/nike.webp',
              ),
              fit: BoxFit.cover,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
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
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.w),
          child: Column(
            children: [
              SizedBox(
                width: 154,
                child: Text(
                  'Nike Rebok Red Run',
                  style: TextStyle(
                    color: Color(0xFF4D4D4D),
                    fontSize: 16,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 60.h),
                child: SizedBox(
                  width: 90,
                  child: Text(
                    '\$40.00',
                    style: TextStyle(
                      color: Color(0xFFBE191C),
                      fontSize: 18,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w800,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                top: 10.h,
              )),
              Padding(
                padding: const EdgeInsets.only(right: 60),
                child: Row(
                  children: [
                    Container(
                      width: 26,
                      height: 26,
                      decoration: ShapeDecoration(
                        color: Color(0x19BE191C),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7)),
                      ),
                      child: Icon(
                        CupertinoIcons.minus,
                        color: Color(0xFFBE191C),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '1',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 26,
                      height: 26,
                      decoration: ShapeDecoration(
                        color: Color(0xFFBE191C),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7)),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
