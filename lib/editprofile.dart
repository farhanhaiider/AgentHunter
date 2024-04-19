import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:loginpage/Components/paymnet.dart';

class editprofile extends StatelessWidget {
  const editprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(children: [
                Padding(padding: EdgeInsetsDirectional.only(top: 60)),
                Row(children: [
                  BackButton(),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    'Alex Johns',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ]),
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/agent1.jpg'),
                    backgroundColor: Colors.greenAccent,
                    radius: 60,
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(
                      top: 40,
                      left: 0,
                      right: 270,
                    ),
                    child: Text(
                      'Name',
                      style: TextStyle(
                        color: Color(0xFF4D4D4D),
                        fontSize: 18,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        height: 0.08,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    top: 10,
                    right: 30,
                  ),
                  child: Container(
                    height: 55,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 235, 230, 230),
                            blurRadius: 10.0,
                            spreadRadius: 0.5,
                            offset: Offset(0.0, 1.0))
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
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
                        hintText: 'Alex Costa',
                      ),
                    ),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(
                      top: 30,
                      left: 0,
                      right: 270,
                    ),
                    child: Text(
                      'Email',
                      style: TextStyle(
                        color: Color(0xFF4D4D4D),
                        fontSize: 18,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        height: 0.08,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    top: 10,
                    right: 30,
                  ),
                  child: Container(
                    height: 55,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 235, 230, 230),
                            blurRadius: 10.0,
                            spreadRadius: 0.5,
                            offset: Offset(0.0, 1.0))
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
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
                        hintText: 'alex@agenthuntergmail.com',
                      ),
                    ),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(
                      top: 30,
                      left: 0,
                      right: 210,
                    ),
                    child: Text(
                      'Phone Number',
                      style: TextStyle(
                        color: Color(0xFF4D4D4D),
                        fontSize: 18,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        height: 0.08,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    top: 10,
                    right: 30,
                  ),
                  child: Container(
                    height: 55,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 235, 230, 230),
                            blurRadius: 10.0,
                            spreadRadius: 0.5,
                            offset: Offset(0.0, 1.0))
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
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
                        hintText: '+92 334 6789865',
                      ),
                    ),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(
                      top: 30,
                      left: 0,
                      right: 270,
                    ),
                    child: Text(
                      'Country',
                      style: TextStyle(
                        color: Color(0xFF4D4D4D),
                        fontSize: 17,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                        height: 0.08,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    top: 10,
                    right: 30,
                  ),
                  child: Container(
                    height: 55,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 235, 230, 230),
                            blurRadius: 10.0,
                            spreadRadius: 0.5,
                            offset: Offset(0.0, 1.0))
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
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
                        hintText: 'Pakistan',
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 130), child: payment())
              ]),
            )));
  }
}
