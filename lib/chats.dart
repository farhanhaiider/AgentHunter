import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginpage/Components/row.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class chats extends StatelessWidget {
  const chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(children: [
                Padding(
                    padding: EdgeInsetsDirectional.only(
                  top: 80.h,
                )),
                Text(
                  'Conversations',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 40.w,
                    top: 30.h,
                    right: 30.w,
                  ),
                  child: Container(
                    height: _height * 0.06,
                    width: _width * 0.90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 235, 230, 230),
                            blurRadius: 10.0,
                            spreadRadius: 0.5,
                            offset: Offset(1.0, 1.0))
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
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
                        hintText: 'Search',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 30.w),
                  child: Container(
                    height: _height * 0.70,
                    child: ListView.separated(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return roww();
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 19,
                        );
                      },
                      itemCount: 19,
                    ),
                  ),
                ),
              ]),
            )));
  }
}
