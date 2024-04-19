import 'package:flutter/material.dart';
import 'package:loginpage/Components/bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:loginpage/signup.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 100)),
            Image.asset(
              'assets/images/Bimage.jpg',
              height: 150,
              width: 150,
              fit: BoxFit.fill,
            ),
            //const Padding(padding: EdgeInsets.only(top: 200)),
            const Padding(padding: EdgeInsets.only(top: 40, left: 50)),
            const Padding(
              padding: EdgeInsets.only(left: 50),
              child: Row(
                children: [
                  BackButton(),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 10,
                left: 50,
                right: 100,
              ),
              child: Text(
                'Log in to Barfly',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.green,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 10,
                left: 10,
                right: 250,
              ),
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
              padding: const EdgeInsets.only(
                left: 50,
                top: 5,
                right: 60,
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
                  hintText: 'Your email address',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 10,
                right: 220,
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
              padding: const EdgeInsets.only(
                left: 50,
                top: 5,
                right: 60,
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
                  hintText: ' Your password',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 180,
              ),
              child: TextButton(
                onPressed: () {
                  print("tapped!");
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.green,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
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
                      MaterialPageRoute(
                          builder: (context) => bar(
                                index: 0,
                              )),
                    );
                  },
                  child: const Text(
                    "login",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )),

            Padding(
              padding: EdgeInsets.only(left: 65),
              child: Row(
                children: [
                  Text(
                    'Dont Have an account? ',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black45,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Signup()));
                      //print("tapped!");
                    },
                    child: const Text(
                      'Signup',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 50,
                top: 10,
                right: 90,
              ),
              child: Text(
                'Barfly uses cookies for analytics personalized content and ads. By using Music Visualizer you agree to this use of cookies. Learn More! ',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black45,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
