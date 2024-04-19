import 'package:flutter/material.dart';

class gridd extends StatelessWidget {
  const gridd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Column(children: [
              Padding(
                padding: EdgeInsets.only(top: 30),
              ),
              Text(
                'PRODUCTS OF THE WEEK',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: 10,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const gridd()),
                            );
                          },
                          child: Container(
                            height: _height * 0.20,
                            width: _width * 0.40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/nike.webp',
                                ),
                                fit: BoxFit.cover,
                              ),
                              border: Border.all(color: Colors.green),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors
                                        .grey, // Change color of the shadow
                                    blurRadius: 1.0,
                                    spreadRadius: 0.5,
                                    offset: Offset(0.0, 5.0))
                              ],
                            ),
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 25,
                            ),
                            alignment: Alignment.topRight,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Center(
                            child: Text(
                              'Nike Airzoom crossover',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 1, right: 120),
                          child: Text(
                            '\$40',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    );
                  },
                ),
              )
            ])));
  }
}
