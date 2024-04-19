import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class page1 extends StatelessWidget {
  const page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Text(
                'Favourites',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.only(top: 20.h)),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 170,
                        width: 170,
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
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 25,
                        ),
                        alignment: Alignment.topRight,
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
                  ),
                  Padding(padding: EdgeInsets.only(left: 40)),
                  Column(
                    children: [
                      Container(
                        height: _height * 0.20,
                        width: _width * 0.40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/canon.webp',
                            ),
                            fit: BoxFit.contain,
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
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 25,
                        ),
                        alignment: Alignment.topRight,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, right: 80),
                        child: Center(
                          child: Text(
                            'Canon 200D',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 1, right: 120),
                        child: Text(
                          '\$399',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 170,
                        width: 170,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/nikee.webp',
                            ),
                            fit: BoxFit.contain,
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
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 25,
                        ),
                        alignment: Alignment.topRight,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Center(
                          child: Text(
                            'Nike AirForce Triple black',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 1, right: 120),
                        child: Text(
                          '\$80',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(left: 40)),
                  Column(
                    children: [
                      Container(
                        height: 170,
                        width: 170,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/scents.webp',
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
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 25,
                        ),
                        alignment: Alignment.topRight,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, right: 100),
                        child: Center(
                          child: Text(
                            'Scents',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 1, right: 120),
                        child: Text(
                          '\$20',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
