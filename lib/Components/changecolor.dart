import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class changecolor extends StatefulWidget {
  const changecolor({super.key});

  @override
  State<changecolor> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<changecolor> {
  Color _containerColor = Colors.white;

  void _changeColor() {
    setState(() {
      _containerColor = Color(0xFFBE191C);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeColor,
      child: Container(
        width: 57.w,
        height: 57.h,
        padding: const EdgeInsets.all(10),
        decoration: ShapeDecoration(
          color: _containerColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 25,
              offset: Offset(0, 0),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '38',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 219, 211, 211),
                fontSize: 20,
                fontFamily: 'Manrope',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
