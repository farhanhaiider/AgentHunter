import 'package:flutter/material.dart';
import 'package:loginpage/home.dart';
import 'package:loginpage/login.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Signup extends StatelessWidget {
  Signup({super.key});

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(children: [
            Row(
              children: [
                Padding(
                    padding:
                        EdgeInsets.only(top: 100.h, bottom: 10.h, left: 40.w)),
                BackButton(),
              ],
            ),

            /* const SizedBox(
                  height: 10,
                ),*/

            Padding(
              padding:
                  EdgeInsets.only(top: 5.h, left: 50, right: 100, bottom: 50),
              child: Text(
                'Get your Account',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.green,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10.h,
                left: 10.w,
                right: 250.w,
              ),
              child: Text(
                'Name',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black45,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 50.w,
                top: 5.h,
                right: 60.w,
              ),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 2, color: Colors.black45),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  border: const OutlineInputBorder(),
                  hintText: 'Your Name',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30, right: 250, left: 1),
              child: Text(
                'Email',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black45,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 50.w,
                top: 5.h,
                right: 60.w,
              ),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 3, color: Colors.black45),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  border: const OutlineInputBorder(),
                  hintText: ' Your Email',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 30.h,
                right: 220.w,
              ),
              child: Text(
                'Password',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black45,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 50.w,
                top: 5.h,
                right: 60.w,
              ),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 3, color: Colors.black45),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  border: const OutlineInputBorder(),
                  hintText: ' Your Password',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 30.h,
                right: 220.w,
                left: 50.w,
              ),
              child: Text(
                'Confirm password',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black45,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 50.w,
                top: 5.h,
                right: 60.w,
              ),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 3, color: Colors.black45),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  border: const OutlineInputBorder(),
                  hintText: ' Confirm your Password',
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              width: 302,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.black)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                child: const Text(
                  "Register",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 65),
              child: Row(
                children: [
                  Text(
                    'Already Have an account? ',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black45,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                      //print("tapped!");
                    },
                    child: const Text(
                      'Log In!',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.green,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
