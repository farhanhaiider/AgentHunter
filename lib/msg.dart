import 'package:flutter/material.dart';
import 'package:loginpage/Components/Btmsheet.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class msgg extends StatelessWidget {
  const msgg({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Column(children: [
              Padding(padding: EdgeInsetsDirectional.only(top: 60)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BackButton(),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Alex Johns',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  PopupMenuButton(
                    icon: Icon(Icons.more_vert),
                    itemBuilder: (BuildContext context) {
                      return [
                        PopupMenuItem(
                          child: Text('custom request'),
                          value: 'option1',
                        ),
                        PopupMenuItem(
                          child: Text('report agent'),
                          value: 'option2',
                        ),
                        PopupMenuItem(
                          child: Text('block agent'),
                          value: 'option3',
                        ),
                      ];
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    onSelected: (value) {
                      switch (value) {
                        case 'option1':
                          showModalBottomSheet(
                            context: context,
                            backgroundColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20.0)),
                            ),
                            builder: (context) {
                              return Btmsheet();
                            },
                          );
                          break;
                        case 'option2':
                          // Handle 'report agent' option
                          break;
                        case 'option3':
                          // Handle 'block agent' option
                          break;
                      }
                    },
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 300, left: 200),
                child: Container(
                    width: 161,
                    height: 197,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
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
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Text(
                          'Nike Rebok Blue',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        Container(
                          width: 161,
                          height: 155,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/nike.webp',
                              ),
                              fit: BoxFit.contain,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        )
                      ],
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 200, right: 10, top: 10),
                child: Container(
                    width: 262,
                    height: 48,
                    decoration: ShapeDecoration(
                      color: Color(0xFFBE191C),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                    ),
                    padding: EdgeInsets.only(top: 10),
                    child: SizedBox(
                      width: 221,
                      height: 24,
                      child: Text(
                        'Please confirm me its size.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 170),
                child: Container(
                    width: 195,
                    height: 48,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                    ),
                    padding: EdgeInsets.only(top: 10),
                    child: SizedBox(
                      width: 163,
                      height: 24,
                      child: Text(
                        'It is about 43.5 EU',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )),
              ),
              Padding(padding: EdgeInsets.only(top: 50, left: 30)),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 10),
                    child: Container(
                        width: 320,
                        height: 55,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 1.20, color: Color(0xFFEAEAEF)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        padding: EdgeInsets.only(top: 10, left: 10),
                        child: SizedBox(
                          width: 256,
                          child: Text(
                            'Type your message...',
                            style: TextStyle(
                              color: Color(0xFFB9B9B9),
                              fontSize: 16,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        )),
                  ),
                  Container(
                    width: 55,
                    height: 55,
                    decoration: ShapeDecoration(
                      color: Color(0xFFBE191C),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Icon(
                      Icons.arrow_upward,
                      color: Colors.white,
                      size: 30,
                    ),
                  )
                ],
              )
            ])));
  }
}
