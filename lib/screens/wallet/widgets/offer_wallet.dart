import 'package:flutter/material.dart';
import '../../../gradients.dart';

class WalletCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            margin: EdgeInsets.only(bottom: 20, right: 2, left: 2, top: 2),
            alignment: Alignment.centerRight,
            height: 125,
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 0.54,
                    color: Colors.black26,
                  )
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(child: Container()),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '25% OFF',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Oro Restaurant',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Expire on 18-3-2020',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 15, right: 10),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: 60,
                  child: Text(
                    'Redeem',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  decoration: BoxDecoration(
                      gradient: custom_gradient,
                      borderRadius: BorderRadius.circular(10)),
                )
              ],
            ),
          ),
        ),
        Positioned(
            top: 10,
            left: 0,
            child: Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 0.5,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('assets/restaurant.jpeg'))),
              ),
            ))
      ],
    );
  }
}
