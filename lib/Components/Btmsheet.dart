import 'package:flutter/material.dart';

class Btmsheet extends StatelessWidget {
  const Btmsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 393,
      height: 417,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      padding: EdgeInsets.only(top: 40),
      child: Column(
        children: [
          Text(
            'Custom Request',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w700,
              height: 0.08,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              top: 20,
              right: 30,
            ),
            child: TextField(
              minLines: 7,
              maxLines: 8,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 1,
                    color: Color(0xFFB9B9B9),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 3,
                    color: Color(0xFFB9B9B9),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                border: const OutlineInputBorder(),
                hintText: ' Request Description',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              top: 20,
              right: 30,
            ),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 1,
                    color: Color(0xFFB9B9B9),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 3,
                    color: Color(0xFFB9B9B9),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                border: const OutlineInputBorder(),
                hintText: ' Price',
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 30)),
          Container(
            width: 342,
            height: 54,
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
            decoration: ShapeDecoration(
              color: Color(0xFFBE191C),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Send Request',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          height: 0.07,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
