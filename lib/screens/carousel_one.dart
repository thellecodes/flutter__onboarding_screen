import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(24.4, 42.0, 24.4, 42.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    image: AssetImage('assets/back.png'),
                  ),
                  Text("Skip")
                ],
              ),
            ),
            Container(
              child: CarouselSlider(
                options: CarouselOptions(height: 400.0),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(color: Colors.amber),
                          child: Text(
                            'text $i',
                            style: TextStyle(fontSize: 16.0),
                          ));
                    },
                  );
                }).toList(),
              ),
            )
            // Container(
            //   margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 34),
            //   constraints: BoxConstraints.expand(height: 350.0),
            //   width: MediaQuery.of(context).size.width * 0.65,
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: AssetImage("assets/girl2.png"),
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),

            // Container(
            //   margin: EdgeInsets.only(top: 40),
            //   width: MediaQuery.of(context).size.width * 0.60,
            //   child: RaisedButton(
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(18.0),
            //     ),
            //     onPressed: () {},
            //     padding: EdgeInsets.only(top: 15, bottom: 15),
            //     color: _colorFromHex('#FF725E'),
            //     textColor: Colors.white,
            //     child: Text("Get My Plan".toUpperCase(),
            //         style: TextStyle(fontSize: 14)),
            //   ),
            // ),
            // Container(
            //   margin: EdgeInsets.only(top: 20),
            //   child: Text(
            //     "Sign In",
            //     style: TextStyle(
            //         color: _colorFromHex("#737CA4"),
            //         fontSize: 18,
            //         fontFamily: "Lato"),
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  Color _colorFromHex(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }
}
