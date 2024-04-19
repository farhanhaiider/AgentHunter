import 'package:flutter/material.dart';
import 'package:loginpage/address.dart';
import 'package:loginpage/cart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:loginpage/chats.dart';
import 'package:loginpage/checkout.dart';
import 'package:loginpage/detail1.dart';
import 'package:loginpage/detail2.dart';
import 'package:loginpage/details.dart';
import 'package:loginpage/detailss.dart';
import 'package:loginpage/detailw.dart';
import 'package:loginpage/gridview.dart';
import 'package:loginpage/home.dart';
import 'package:loginpage/login.dart';
import 'package:loginpage/nikee.dart';
import 'package:loginpage/order.dart';
import 'package:loginpage/page1.dart';
import 'package:loginpage/perfume.dart';
import 'package:loginpage/products.dart';
import 'package:loginpage/profille.dart';
import 'package:loginpage/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "My App",
            initialRoute: '/login',
            routes: {
              '/login': (context) => LoginScreen(),
              '/signup': (context) => Signup(),
              '/home': (context) => Home(),
              '/page1': (context) => page1(),
              '/products': (context) => products(),
              '/chats': (context) => chats(),
              '/details': (context) => details(),
              '/detail1': (context) => detail1(),
              '/detail2': (context) => detail2(),
              '/detailw': (context) => detailw(),
              '/detailss': (context) => detailss(),
              '/perfume': (context) => perfume(),
              '/nikee': (context) => nikee(),
              '/gridview': (context) => gridd(),
              '/profille': (context) => profille(),
              '/Mycart': (context) => Mycart(),
              '/checkout': (context) => checkout(),
              '/Address': (context) => Address(),
              '/order': (context) => Order(),
              // Add more routes here as needed
            },
            
          );
        });
  }
}
