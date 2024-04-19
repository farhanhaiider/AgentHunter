import 'package:flutter/material.dart';
import 'package:loginpage/detailss.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class addcomponent extends StatelessWidget {
  addcomponent({super.key, this.title});

  String? title;

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const detailss()),
        );
      },
      child: Container(
        height: _height * 0.10,
        width: _width * 0.80,
        padding: EdgeInsets.only(top: 15.h, right: 120.w, bottom: 15.h),
        child: Column(
          children: [
            Text(
              '$title',
              style: TextStyle(
                  color: Colors.black45,
                  fontSize: 20,
                  fontWeight: FontWeight.normal),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10.h,
              ),
              child: Text(
                'Scents N Secrets',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, right: 100.w),
              child: Text(
                '\$20',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 10.0,
                spreadRadius: 1.0,
                offset: Offset(0.0, 5.0))
          ],
          image: DecorationImage(
            image: AssetImage(
              'assets/images/scents.webp',
            ),
            alignment: Alignment.centerRight,
            fit: BoxFit.contain,
          ),
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
