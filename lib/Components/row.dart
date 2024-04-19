import 'package:flutter/material.dart';
import 'package:loginpage/msg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class roww extends StatelessWidget {
  const roww({super.key});

  @override
  Widget build(BuildContext context) {
    // var _height = MediaQuery.of(context).size.height;
    // var _width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const msgg()),
        );
      },
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/agent1.jpg'),
            backgroundColor: Colors.greenAccent,
            radius: 35,
          ),
          Padding(padding: EdgeInsetsDirectional.only()),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'James Hales',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              Padding(padding: EdgeInsets.only(top: 10.h)),
              Text(
                'Thanks for having me. see you soon....',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 80,
          ),
          Text(
            'yesterday',
            style: TextStyle(color: Colors.black, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
