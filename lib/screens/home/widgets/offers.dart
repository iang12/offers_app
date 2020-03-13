import 'package:flutter/material.dart';
import 'package:flutter_multi_carousel/carousel.dart';
import 'package:restaurant_design_app/gradients.dart';

class Offer extends StatefulWidget {
  @override
  _OfferState createState() => _OfferState();
}

class _OfferState extends State<Offer> {
  @override
  Widget build(BuildContext context) {
    return Carousel(
      height: MediaQuery.of(context).size.height * 0.7,
      width: MediaQuery.of(context).size.width,
      initialPage: 0,
      allowWrap: false,
      showIndicator: false,
      type: Types.slideSwiper,
      axis: Axis.horizontal,
      children: <Widget>[
        carrouselChild(
            img: 'assets/offer1.jpeg',
            title: "Fellini \'s Dinig",
            price: 'Price to 50% Off'),
        carrouselChild(
            img: 'assets/offer2.jpeg',
            title: "stagioni",
            price: 'Price to 56% Off'),
        carrouselChild(
            img: 'assets/offer3.jpeg',
            title: "Parmiggiana",
            price: 'Price to 40% Off'),
        carrouselChild(
            img: 'assets/offer4.jpeg',
            title: "Capricciosa",
            price: 'Price to 20% Off'),
      ],
    );
  }

  Widget carrouselChild({String title, String img, String price}) {
    return Column(
      children: <Widget>[
        Flexible(
          flex: 4,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.55,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      img,
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
        Flexible(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white70, borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.only(
              top: 20,
              left: 15,
            ),
            height: 200,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      price,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Expanded(child: Container()),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.20,
                  height: 60,
                  child: Text(
                    'Info',
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
      ],
    );
  }
}
