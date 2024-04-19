import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginpage/Components/Price.dart';
import 'package:loginpage/Components/changecolor.dart';
import 'package:loginpage/Components/likebutton.dart';
import 'package:loginpage/cart.dart';
import 'package:loginpage/products.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class detailss extends StatefulWidget {
  const detailss({Key? key}) : super(key: key);

  @override
  State<detailss> createState() => _detailssState();
}

class _detailssState extends State<detailss> {
  int _counter = 1;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      if (_counter > 1) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(children: [
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
                    IconButton(
                      iconSize: 20,
                      icon: const Icon(Icons.shopping_cart_checkout_rounded),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Mycart()),
                        );
                      },
                    ),
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
                        'assets/images/scents.webp',
                      ),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10.0,
                          spreadRadius: 0.5,
                          offset: Offset(0.0, 5.0))
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 30)),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Scents N Secrets',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 80)),
                    CustomLikeButton(),
                    Text(
                      '21',
                      style: TextStyle(color: Colors.red, fontSize: 15),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 180, left: 15, top: 5),
                  child: Row(
                    children: [
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 255, 185, 9),
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                        itemSize: 20,
                      ),
                      Text(
                        '(4.0)',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFB9B9B9),
                          fontSize: 17,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 6),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/agent1.jpg'),
                        backgroundColor: Colors.greenAccent,
                        radius: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Alex Jhons',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF4D4D4D),
                          fontSize: 16,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 20,
                      ),
                      Text(
                        '(4.8)',
                        style: TextStyle(color: Colors.black45),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 19),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: _decrement,
                        child: Container(
                          width: 26,
                          height: 26,
                          decoration: ShapeDecoration(
                            color: Color(0x19BE191C),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                          child: Icon(
                            CupertinoIcons.minus,
                            color: Color(0xFFBE191C),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '$_counter',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: _increment,
                        child: Container(
                          width: 26,
                          height: 26,
                          decoration: ShapeDecoration(
                            color: Color(0xFFBE191C),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, right: 285),
                  child: Text(
                    'Select Size',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20),
                  child: Row(
                    children: [
                      changecolor(),
                      SizedBox(
                        width: 10,
                      ),
                      changecolor(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 280),
                  child: Text(
                    'Description',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                  child: Text(
                    'Scents N Secrets is where fragrances come alive and create a symphony of scents that enrapture the senses. We are a team of fragrance enthusiasts with a keen eye for detail and a nose for the most exquisite perfumes.',
                    style: TextStyle(
                      color: Color(0xFF4D4D4D),
                      fontSize: 14,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            color: Color(0xFFBE191C),
                            height: 20 / 15,
                          ),
                          // textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Text(
                        'Alex Costa',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30, top: 5),
                  child: SizedBox(
                    width: 342,
                    height: 59,
                    child: Text(
                      'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo',
                      style: TextStyle(
                        color: Color(0xFF4D4D4D),
                        fontSize: 14,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 70)),
                Price()
              ]),
            )));
  }
}
