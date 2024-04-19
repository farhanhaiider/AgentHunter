import 'package:flutter/material.dart';
import 'package:loginpage/editprofile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class profiledata extends StatelessWidget {
  const profiledata({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Column(children: [
              Padding(padding: EdgeInsetsDirectional.only(top: 40)),
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
                          child: Text('Edit Profile'),
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
                              builder: (context) => const editprofile(),
                            ),
                          );

                          break;
                      }
                    },
                  )
                ],
              ),
              const Padding(padding: EdgeInsetsDirectional.only(top: 30)),
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
                  // Padding(
                  //   padding: EdgeInsets.only(left: 10),
                  //   child: Column(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       Text(
                  //         '25',
                  //         style: TextStyle(color: Colors.black, fontSize: 40),
                  //       ),
                  //       Padding(padding: EdgeInsets.only(top: 10)),
                  //       Text(
                  //         'orders completed',
                  //         style: TextStyle(
                  //           color: Colors.black,
                  //           fontSize: 10,
                  //           fontWeight: FontWeight.normal,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 30)),
              Container(
                height: 2,
                width: 340,
                color: Color.fromARGB(255, 231, 224, 224),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        height: 0.08,
                      ),
                    ),
                    Text(
                      'Alex Costa',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF4D4D4D),
                        fontSize: 18,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        height: 0.08,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        height: 0.08,
                      ),
                    ),
                    Text(
                      'alex@agenthunter.com',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF4D4D4D),
                        fontSize: 18,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        height: 0.08,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Phone Number',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        height: 0.08,
                      ),
                    ),
                    Text(
                      '+92 333 6613900',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF4D4D4D),
                        fontSize: 18,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        height: 0.08,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Country',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        height: 0.08,
                      ),
                    ),
                    Text(
                      'United State of America',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF4D4D4D),
                        fontSize: 18,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        height: 0.08,
                      ),
                    )
                  ],
                ),
              )
            ])));
  }
}
