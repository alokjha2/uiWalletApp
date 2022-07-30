import 'package:flutter/material.dart';

class card extends StatelessWidget {
  const card({
    Key? key, required this.balance, required this.cardNumber, required this.expiryMonth, required this.color1, required this.expiryYear,
  }) : super(key: key);

  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final Color color1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(color: color1,
        borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(height: 5,),
            RichText(
              // ignore: prefer_const_literals_to_create_immutables
              text: TextSpan(children: [
              TextSpan(text: "Balance\n", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400)),
              TextSpan(text: "\n\$ $balance", style: TextStyle(color: Colors.white, fontSize: 28,fontWeight: FontWeight.w600)),
            ])),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("****** $cardNumber", style: TextStyle(color: Colors.white,),),
              Text("$expiryMonth/ $expiryYear", style: TextStyle(color: Colors.white,),),
            ],),
            // SizedBox(height: 5,),
          ],
        ),
        ),
    );
  }
}

