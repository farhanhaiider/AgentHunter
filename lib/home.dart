import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:loginpage/Components/listcomponent.dart';

import 'package:loginpage/detail1.dart';

import 'package:loginpage/products.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  var data = ["ABC", "asd", "sdf"];

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(
              top: 40,
            )),
            Padding(
              padding: const EdgeInsets.only(left: 27, right: 26),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(onTap: () {}, child: Icon(Icons.menu)),
                  Text(
                    'AgentHunter',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  Icon(Icons.notifications_rounded),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 25.w,
                top: 41.h,
                right: 25.w,
              ),
              child: Container(
                height: 55,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 235, 230, 230),
                        blurRadius: 10.0,
                        spreadRadius: 0.5,
                        offset: Offset(1.0, 1.0))
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      // suffixIcon: Icon(Icons.),
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
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        color: Color(0xFFB9B9B9),
                        fontSize: 14,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        height: 0.09,
                      )),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 50.w,
                top: 20.h,
                right: 60.w,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Near Me',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'See all',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFFBE191C),
                            fontSize: 16,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        )),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                height: _height * 0.20,
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return addcomponent(
                        title: data[index],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 18,
                      );
                    },
                    itemCount: data.length),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28, left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Products of the Week',
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
                          MaterialPageRoute(
                              builder: (context) => const products()),
                        );
                      },
                      child: Text(
                        'See all',
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
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: 28,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const detail1()),
                          );
                        },
                        child: Container(
                          height: _height * 0.18,
                          width: _width * 0.42,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/nike.webp',
                              ),
                              fit: BoxFit.cover,
                            ),
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 10.0,
                                  spreadRadius: 0.5,
                                  offset: Offset(0.0, 5.0))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Center(
                          child: Text(
                            'Nike Airzoom crossover',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 1, right: 120),
                        child: Text(
                          '\$40',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
