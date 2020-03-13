import 'package:flutter/material.dart';
import 'package:restaurant_design_app/screens/wallet/widgets/offer_wallet.dart';

class Wallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        WalletCard(),
        WalletCard(),
        WalletCard(),
        WalletCard(),
        WalletCard(),
        WalletCard(),
      ],
    );
  }
}
