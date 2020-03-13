import 'package:flutter/material.dart';
import 'package:flutter_multi_carousel/carousel.dart';
import 'package:restaurant_design_app/screens/home/widgets/offers.dart';
import 'package:restaurant_design_app/screens/wallet/wallet.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int indexPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          ['Offers', 'Wallet', 'My Profile', 'Settings'][indexPage],
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w900, color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(20.0),
          child:
              Icon(Icons.format_list_bulleted, size: 30, color: Colors.black),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Icon(Icons.search, size: 30, color: Colors.black),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            [
              Flexible(
                child: Offer(),
              ),
              Expanded(child: Wallet()),
              Container(),
              Container(),
            ][indexPage],
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            print(value);
            setState(() {
              indexPage = value;
            });
          },
          currentIndex: indexPage,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.offline_bolt,
                  size: 30,
                  color: Colors.orangeAccent,
                ),
                icon: Icon(
                  Icons.offline_bolt,
                  size: 30,
                  color: Colors.grey,
                ),
                title: Text(
                  '',
                  style: TextStyle(color: Colors.blue),
                )),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.account_balance_wallet,
                    size: 30, color: Colors.orangeAccent),
                icon: Icon(
                  Icons.account_balance_wallet,
                  size: 30,
                  color: Colors.grey,
                ),
                title: Text(
                  '',
                  style: TextStyle(color: Colors.blue),
                )),
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.person_outline,
                  size: 30,
                  color: Colors.orangeAccent,
                ),
                icon: Icon(
                  Icons.person_outline,
                  size: 30,
                  color: Colors.grey,
                ),
                title: Text(
                  '',
                  style: TextStyle(color: Colors.blue),
                )),
            BottomNavigationBarItem(
                activeIcon:
                    Icon(Icons.settings, size: 30, color: Colors.orangeAccent),
                icon: Icon(
                  Icons.settings,
                  size: 30,
                  color: Colors.grey,
                ),
                title: Text(
                  '',
                  style: TextStyle(color: Colors.blue),
                )),
          ]),
    );
  }
}
