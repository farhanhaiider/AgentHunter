import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginpage/Components/Cartitem.dart';
import 'package:loginpage/Components/Price.dart';
import 'package:loginpage/order.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Mycart extends StatelessWidget {
  const Mycart({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(children: [
                AppBar(
                  backgroundColor: Color(0xFFBE191C),
                  title: Row(
                    children: [
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        'Cart',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      SizedBox(
                        width: 120,
                      ),
                      PopupMenuButton(
                        icon: Icon(Icons.more_vert),
                        itemBuilder: (BuildContext context) {
                          return [
                            PopupMenuItem(
                              child: Text('My Orders'),
                              value: 'option1',
                            )
                          ];
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        onSelected: (value) {
                          switch (value) {
                            case 'option1':
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Order(),
                                ),
                              );
                              break;
                          }
                        },
                      )
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20.h)),
                Padding(
                    padding: EdgeInsets.only(
                  top: 43,
                )),
                Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: const Cartitem(),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.w, top: 20.h),
                  child: const Cartitem(),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.w, top: 20.h),
                  child: const Cartitem(),
                ),
                Padding(padding: EdgeInsets.only(top: 210.h)),
                Price()
              ]),
            )));
  }
}
