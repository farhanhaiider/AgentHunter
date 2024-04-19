import 'package:flutter/material.dart';
import 'package:another_stepper/another_stepper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class orderstatus extends StatelessWidget {
  const orderstatus({super.key});

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    List<StepperData> stepperData = [
      StepperData(
          title: StepperText(
            'Shipped',
            textStyle: TextStyle(
              color: Color(0xFF4D4D4D),
              fontSize: 18,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          iconWidget: Container(
              width: 88,
              height: 188,
              child: Stack(children: [
                Container(
                  width: 68,
                  height: 68,
                  decoration: ShapeDecoration(
                    color: Color(0xFFBE191C),
                    shape: OvalBorder(),
                  ),
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                )
              ]))),
      StepperData(
          title: StepperText(
            'Arrived in your Country',
            textStyle: TextStyle(
              color: Color(0xFF4D4D4D),
              fontSize: 18,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          iconWidget: Container(
              width: 48,
              height: 48,
              child: Stack(children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: ShapeDecoration(
                    color: Color(0xFFBE191C),
                    shape: OvalBorder(),
                  ),
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                )
              ]))),
      StepperData(
          title: StepperText(
            'Arrived in your town',
            textStyle: TextStyle(
              color: Color(0xFF4D4D4D),
              fontSize: 18,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          iconWidget: Container(
              width: 38,
              height: 38,
              child: Stack(children: [
                Container(
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
                )
              ]))),
      StepperData(
          title: StepperText(
            'Delivered',
            textStyle: TextStyle(
              color: Color(0xFF4D4D4D),
              fontSize: 18,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          iconWidget: Container(
              width: 38,
              height: 38,
              child: Stack(children: [
                Container(
                  width: 38,
                  height: 38,
                  decoration: ShapeDecoration(
                    color: Colors.grey,
                    shape: OvalBorder(),
                  ),
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                )
              ]))),
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsetsDirectional.only(top: 60.h)),
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Row(
                  children: [
                    BackButton(),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      'Order Status',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 27,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: AnotherStepper(
                  stepperList: stepperData,
                  scrollPhysics: BouncingScrollPhysics(),
                  stepperDirection: Axis.vertical,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 2.h)),
              Container(
                height: _height * 0.003,
                width: _width * 0.90,
                color: Color.fromARGB(255, 231, 224, 224),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 240),
                child: Text(
                  'Order Details',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 220),
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
                padding: const EdgeInsets.only(top: 20, right: 170),
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
                  padding: const EdgeInsets.only(top: 20, right: 260),
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
                  )),
              Padding(padding: EdgeInsets.only(top: 20)),
              Container(
                height: 2,
                width: 340,
                color: const Color.fromARGB(255, 218, 211, 211),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 180,
                  top: 20,
                ),
                child: Text(
                  'Payment & Shipping',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 230),
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
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 235,
                      top: 10,
                    ),
                    child: Text(
                      'Shipping Address',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      'Unit 15, York Farm Business Centre, Watling St, Towcester',
                      style: TextStyle(
                        color: Color(0xFF4D4D4D),
                        fontSize: 16,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
