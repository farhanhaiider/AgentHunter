import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class chatt extends StatelessWidget {
  const chatt({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
          padding: EdgeInsetsDirectional.only(
        top: 80.h,
      )),
      Text(
        'Conversations',
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      Padding(
        padding: EdgeInsets.only(
          left: 50.w,
          top: 30.h,
          right: 60.w,
        ),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 2, color: Colors.black45),
              borderRadius: BorderRadius.circular(20),
            ),
            border: const OutlineInputBorder(),
            hintText: 'search',
          ),
        ),
      ),
      Padding(padding: EdgeInsets.only(top: 30.h, left: 40.w)),
      Padding(
          padding: EdgeInsets.only(
        top: 20.h,
      )),
    ]);
  }
}
