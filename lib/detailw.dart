import 'package:flutter/material.dart';
import 'package:loginpage/products.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class detailw extends StatelessWidget {
  const detailw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "10:50",
                        style: const TextStyle(
                          fontFamily: "SF Pro Text",
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff000000),
                          height: 18 / 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.wifi,
                          ),
                          Icon(Icons.signal_cellular_alt),
                          Icon(Icons.battery_full_rounded),
                        ],
                      )
                    ]),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BackButton(),
                    Text(
                      'Details',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.shopping_cart),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                ),
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/watch1.webp',
                      ),
                      fit: BoxFit.contain,
                    ),
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.green,
                          blurRadius: 3.0,
                          spreadRadius: 1.0,
                          offset: Offset(5.0, 5.0))
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 30)),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Apple series 9',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black),
                    ),
                    Padding(padding: EdgeInsets.only(left: 80)),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 25,
                    ),
                    Text(
                      '21',
                      style: TextStyle(color: Colors.red, fontSize: 15),
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 30)),
                Text(
                  'Description',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ),
                Padding(
                    padding: EdgeInsets.only(
                  top: 5,
                )),
                Text(
                  'Custom Apple silicon makes Apple Watch Series 9 more capable, intuitive, and faster. The new dual-core CPU has 5.6 billion transistors — 60 percent more than the S8 chip. A new four-core Neural Engine processes machine learning tasks up to two times faster. It enables a number of innovations, including a new gesture — double tap.',
                  style: TextStyle(fontSize: 15, color: Colors.black45),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Row(
                  children: [
                    Text(
                      'Rating and reviews',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(padding: EdgeInsets.only(left: 80)),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const products()),
                        );
                      },
                      child: Text(
                        "See all",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.green,
                          height: 20 / 15,
                        ),
                        // textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 50)),
                Container(
                  height: 150,
                  width: 450,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.green,
                          blurRadius: 3.0,
                          spreadRadius: 1.0,
                          offset: Offset(0, 0))
                    ],
                  ),
                  // alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(
                    top: 20,
                    left: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            'price',
                            style:
                                TextStyle(color: Colors.black45, fontSize: 20),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              '\$499',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 30),
                            ),
                          )
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(left: 80)),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const detailw()),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 160,
                          alignment: Alignment.centerRight,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: EdgeInsets.only(right: 40),
                          child: Text(
                            'Add to Cart',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ]),
            )));
  }
}
