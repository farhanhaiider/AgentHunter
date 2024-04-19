import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:loginpage/Components/bar.dart';
import 'package:loginpage/Components/likebutton.dart';

import 'package:loginpage/detail1.dart';
import 'package:loginpage/profiledata.dart';

class profille extends StatelessWidget {
  const profille({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Column(children: [
              Padding(padding: EdgeInsetsDirectional.only(top: 60.h)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BackButton(),
                  SizedBox(
                    width: 20.w,
                  ),
                  Row(
                    children: [
                      Text(
                        'Alex Jhons',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 30,
                      ),
                      Text(
                        '(4.8)',
                        style: TextStyle(color: Colors.black45),
                      ),
                    ],
                  ),
                  PopupMenuButton(
                    icon: Icon(Icons.more_vert),
                    itemBuilder: (BuildContext context) {
                      return [
                        PopupMenuItem(
                          child: Text('Profile'),
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
                              builder: (context) => profiledata(),
                            ),
                          );
                          break;
                      }
                    },
                  )
                ],
              ),
              Padding(padding: EdgeInsetsDirectional.only(top: 30.h)),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/agent1.jpg'),
                    backgroundColor: Colors.greenAccent,
                    radius: 35,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '12',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Text(
                          'Products',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF4D4D4D),
                            fontSize: 14,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '18',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Text(
                          'Subscribers',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF4D4D4D),
                            fontSize: 14,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '18',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Text(
                          'Orders\nCompleted',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF4D4D4D),
                            fontSize: 14,
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
                child: Text(
                  'I have 4 years of experience in this business.I deal with all kind of products',
                  style: TextStyle(color: Colors.black45, fontSize: 15),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 40)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => bar(
                                  index: 2,
                                )),
                      );
                    },
                    child: Container(
                      height: _height * 0.06,
                      width: _width * 0.40,
                      decoration: BoxDecoration(
                        color: Color(0x19BE191C),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          'message',
                          style:
                              TextStyle(color: Color(0xFFBE191C), fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Button tapped!');
                    },
                    child: Container(
                      height: _height * 0.06,
                      width: _width * 0.40,
                      decoration: BoxDecoration(
                        color: Color(0xFFBE191C),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          'Subscribe',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              Container(
                height: _height * 0.003,
                width: _width * 0.90,
                color: Color.fromARGB(255, 231, 224, 224),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: 18,
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
                            height: _height * 0.17,
                            width: _width * 0.45,
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
                                    spreadRadius: 1.0,
                                    offset: Offset(0.0, 5.0))
                              ],
                            ),
                            child: Positioned(
                                top: 5.0,
                                right: 5.0,
                                child: CustomLikeButton()),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.h),
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
            ])));
  }
}
