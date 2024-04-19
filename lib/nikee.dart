import 'package:flutter/material.dart';
import 'package:loginpage/products.dart';

class nikee extends StatelessWidget {
  const nikee({Key? key}) : super(key: key);

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
                        'assets/images/nikee.webp',
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
                      'NIKE AirForce TripleBlack',
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
                  'Reimagining legendary style, these juniors Air Force 1 Low sneaks from Nike are a modern take on the 82 icon. Keeping Bruce Kilgores OG design lines, these downsized kicks are built with a smooth leather upper in a stealthy, triple black colourway. They feature a secure lace up fastening, and are sat on Nikes revolutionary Air-sole unit for supreme cushioning. With breathable perforations to the toe box, these trainers are finished with a grippy rubber tread, branding to the tongue and the iconic Swoosh logo to the sidewalls.',
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
                              '\$80',
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
                                builder: (context) => const nikee()),
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
