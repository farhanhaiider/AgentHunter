import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsComponent extends StatelessWidget {
  final String text;
  final String text1;
  const ProductsComponent({super.key, required this.text, required this.text1});

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Container(
          height: _height * 0.20,
          width: _width * 0.40,
          decoration: BoxDecoration(
            color: Colors.white,
            image: const DecorationImage(
              image: AssetImage(
                'assets/images/nikee.webp',
              ),
              fit: BoxFit.contain,
            ),
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10.0,
                  spreadRadius: 0.5,
                  offset: Offset(0.0, 5.0))
            ],
          ),
          child: const Icon(
            Icons.favorite,
            color: Colors.red,
            size: 25,
          ),
          alignment: Alignment.topRight,
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.h),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 1, right: 120),
          child: Text(
            text1,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
