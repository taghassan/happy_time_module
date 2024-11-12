
//- - - - - - - - - Instructions - - - - - - - - - - - - - - - - - -
//
// Default Widget call (instantiation):
//  - CreditCard(onTopRightButtonClicked: () {}, cardIcon: Image.network("https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/mastercard.png?alt=media&token=1ae51e14-5a60-4dbf-8a42-47cb9c3c1dfe",  width: 50,))
//
// Coming Soon:
//  - integration into a a card stack
//
//- - - - - - - - - - - - - - -  - - - - - - - - - - - - - - - - - -

import 'package:flutter/material.dart';

class PlusCreditCard extends StatelessWidget {
  final String balance;
  final String cardNumber;
  final Function onTopRightButtonClicked;
  final Gradient backgroundGradient;
  final Widget
  cardIcon; //Should be an Image.network(...) or Image.asset(...) Widget

  const PlusCreditCard({
    super.key,
    required this.onTopRightButtonClicked,
    required this.cardIcon,
    this.balance = "\$2,850.00",
    this.cardNumber = "****  ****  ****  3799",
    this.backgroundGradient =
    const LinearGradient(colors: [Colors.black87, Colors.black54]),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        gradient: backgroundGradient,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.25),
            offset: const Offset(0, 15),
            blurRadius: 45,
          )
        ],
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: IconButton(
                icon: const Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  onTopRightButtonClicked();
                },
              ),
            ),
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      cardNumber,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                    Image.network(
                      "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/mastercard.png?alt=media&token=1ae51e14-5a60-4dbf-8a42-47cb9c3c1dfe",
                      width: 50,
                      errorBuilder: (context, error, stackTrace) => Container(),
                    ),
                  ],
                ),
              )),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    balance,
                    style: const TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    "Balance",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey[400]),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
