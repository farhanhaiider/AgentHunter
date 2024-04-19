import 'package:flutter/material.dart';
import 'package:loginpage/Components/Price.dart';
import 'package:loginpage/products.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class detail1 extends StatelessWidget {
  const detail1({Key? key}) : super(key: key);

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
                        'assets/images/nikeaf.webp',
                      ),
                      fit: BoxFit.cover,
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
                      'Nike AirForce 1',
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
                SizedBox(
                  height: 10,
                ),
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
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
                  'The Air Force is a range of athletic shoes made by Nike that began with Air Force 1. It was created by designer Bruce Kilgore and was the first basketball shoe to use Nikes Air technology. The shoe is offered in low-, mid- and high-top styles. Nike, Inc.',
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
                Price()
              ]),
            )));
  }
}
