import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:loginpage/order.dart';
import 'package:loginpage/orderdetails.dart';
import 'package:toggle_switch/toggle_switch.dart';

class completed extends StatelessWidget {
  const completed({super.key});

  void _showItemDetailsDialog(BuildContext context, String itemName,
      String itemImage, String itemPrice) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(itemName),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                itemImage,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10),
              Text('Price: $itemPrice'),
              // Add more details if needed
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Column(children: [
              Padding(padding: EdgeInsetsDirectional.only(top: 60.h)),
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Text(
                  'Orders',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 40),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: const Color.fromARGB(255, 235, 230, 230),
                          blurRadius: 10.0,
                          spreadRadius: 0.5,
                          offset: Offset(0.0, 1.0))
                    ],
                  ),
                  child: ToggleSwitch(
                    minWidth: 100.0,
                    cornerRadius: 20.0,
                    activeBgColors: [
                      [Colors.green[800]!],
                      [Colors.red[800]!]
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.white,
                    inactiveFgColor: Colors.grey,
                    initialLabelIndex: 1,
                    totalSwitches: 2,
                    labels: ['In Progress', 'Completed'],
                    radiusStyle: true,
                    onToggle: (index) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Order()),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 30),
                child: Row(
                  children: [
                    Container(
                      width: _width * 0.30,
                      height: _height * 0.12,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/scents.webp',
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
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(children: [
                        SizedBox(
                          width: 154,
                          child: Text(
                            'Scents N Sstores',
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
                          padding: const EdgeInsets.only(right: 60, top: 5),
                          child: SizedBox(
                            width: 90,
                            child: Text(
                              '\$90.00',
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
                          padding: const EdgeInsets.only(top: 10, right: 20),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => orderdetail()),
                              );
                            },
                            child: Container(
                              width: 135,
                              height: 35,
                              padding: const EdgeInsets.all(10),
                              decoration: ShapeDecoration(
                                color: Color(0x19BE191C),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Order Status',
                                    style: TextStyle(
                                      color: Color(0xFFBE191C),
                                      fontSize: 14,
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                  const SizedBox(width: 6),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      padding: const EdgeInsets.all(10),
                      decoration: ShapeDecoration(
                        color: Color(0xFF4D4D4D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(108),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '1x',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 9,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 30),
                child: Row(
                  children: [
                    Container(
                      width: _width * 0.30,
                      height: _height * 0.12,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/canon.webp',
                          ),
                          fit: BoxFit.contain,
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
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(children: [
                        SizedBox(
                          width: 154,
                          child: Text(
                            'Canon XP 400',
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
                          padding: const EdgeInsets.only(right: 60, top: 5),
                          child: SizedBox(
                            width: 90,
                            child: Text(
                              '\$90.00',
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
                          padding: const EdgeInsets.only(top: 10, right: 20),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => orderdetail()),
                              );
                            },
                            child: Container(
                              width: 135,
                              height: 35,
                              padding: const EdgeInsets.all(10),
                              decoration: ShapeDecoration(
                                color: Color(0x19BE191C),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Order Status',
                                    style: TextStyle(
                                      color: Color(0xFFBE191C),
                                      fontSize: 14,
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                  const SizedBox(width: 6),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      padding: const EdgeInsets.all(10),
                      decoration: ShapeDecoration(
                        color: Color(0xFF4D4D4D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(108),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '2x',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 9,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 280,
              ),
            ])));
  }
}
