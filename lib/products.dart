import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:loginpage/Components/productcomponent.dart';

class products extends StatelessWidget {
  const products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30),
          ),
          Text(
            'PRODUCTS OF THE WEEK',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Padding(
              padding: EdgeInsets.only(
            top: 20,
          )),
          Container(
              height: 740,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: 26,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(children: [
                      ProductsComponent(
                        text: 'Nike Airforce',
                        text1: '\$80',
                      ),
                    ]);
                  })),
        ],
      ),
    ));
  }
}
