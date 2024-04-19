import 'package:flutter/material.dart';
import 'package:loginpage/Components/bar.dart';
import 'package:loginpage/address.dart';
import 'package:loginpage/changecard.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class checkout extends StatelessWidget {
  const checkout({super.key});
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
                Container(
                  width: 100,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    image: DecorationImage(
                      image: AssetImage('assets/images/tick.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // First line of text
                Text(
                  'Congrats! Order successfully placed',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // Second line of text
                Text(
                  'Order should arrive within 7 working days.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF4D4D4D),
                    fontSize: 14,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w400,
                    height: 0.12,
                  ),
                ),

                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => bar(index: 0)),
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
                        'Go to HomePage',
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
              ],
            ),
          ),
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
                child: Row(children: [
                  BackButton(),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    'Checkout',
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
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Payment Method',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => changecard()),
                        );
                      },
                      child: Text(
                        'Change Card',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFFBE191C),
                          fontSize: 16,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      )),
                ],
              ),
              Container(
                height: _height * 0.25,
                width: _width * 0.90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/atmcard.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, right: 200),
                child: Text(
                  'Delivery Address',
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
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    Text(
                      'Unit 15, York Farm Business ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w500,
                        height: 0.10,
                      ),
                      softWrap: true,
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Address()),
                          );
                        },
                        child: Text(
                          'Change',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFFBE191C),
                            fontSize: 16,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        )),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              Container(
                height: _height * 0.003,
                width: _width * 0.90,
                color: Color.fromARGB(255, 231, 224, 224),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 30),
                child: Row(
                  children: [
                    Text(
                      'Total Items (3)',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    SizedBox(
                      width: 200,
                    ),
                    Text(
                      '\$80.00',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFFBE191C),
                        fontSize: 18,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w800,
                        height: 0,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30),
                child: Row(
                  children: [
                    Text(
                      'Standard Delivery',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    SizedBox(width: 180),
                    Text(
                      '\$20.00',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFFBE191C),
                        fontSize: 18,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w800,
                        height: 0,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30),
                child: Row(
                  children: [
                    Text(
                      'Total Price',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    SizedBox(
                      width: 220,
                    ),
                    Text(
                      '\$100.00',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFFBE191C),
                        fontSize: 18,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w800,
                        height: 0,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 155,
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
                  height: _height * 0.06,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
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
                                    text: 'Pay ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.w600,
                                      height: 0.07,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '\$100.00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.w800,
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
              )
            ])));
  }
}
