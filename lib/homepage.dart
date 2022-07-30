

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:uiwalletapp/card.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.monetization_on),backgroundColor: Colors.pink,),
      bottomNavigationBar: BottomAppBar(
        // color: Colors.white[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          // IconButton(onPressed: (){}, icon: Image.asset("assets/home (1).png")),
          IconButton(onPressed: (){}, icon: Image.asset("assets/Home1.png",height: 25,width: 25,),iconSize: 15,),
          IconButton(onPressed: (){}, icon: Image.asset("assets/settings.png",height: 25,width: 25,)),
      ],),
        )),
      body: SafeArea(

        child: SingleChildScrollView(
          child: Column(
            children: [
            // appBar
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(text: TextSpan(children: [
                    TextSpan(text: "My", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500,color: Colors.black)),
                    TextSpan(text: " Cards", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400,color: Colors.black)),
                  ])),
        
                  // plus button
        
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle,
                      ),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.add)))
                 
            ],
          ),
              ),
        
              SizedBox(height: 25,),
        
              
            // list of cards
            Container(
              height: 200,
        
              child: PageView(
                controller: controller,
                children: [
                  
              card(cardNumber: 356498, color1: Colors.deepPurple.shade400, expiryMonth: 5, balance: 930, expiryYear: 41,),
              card(cardNumber: 345671, color1: Colors.blue.shade400, expiryMonth: 1, balance: 5430, expiryYear: 35,),
              card(cardNumber: 098765, color1: Colors.deepOrange.shade400, expiryMonth: 12, balance: 5430, expiryYear: 28,),
              card(cardNumber: 132456, color1: Colors.green.shade400, expiryMonth: 8, balance: 5430, expiryYear: 30,),
            ],
          ),
              ),
              SizedBox(height: 20,),
        
              SmoothPageIndicator(
          
          controller: controller,
          count: 4,
          effect: ExpandingDotsEffect(
            activeDotColor: Colors.deepPurple.shade400
          ),
          ),
              
              
              SizedBox(height: 20,),
            // buttons-send,share,pay
        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  button(icon: "assets/bank.png",title: "Transfer",color1: Colors.green.shade600,),
                  button(icon: "assets/cred.jpg",title: "Wallet",),
                  button(icon: "assets/coins.png",title: "Pay",color1: Colors.yellowAccent.shade700,),
                ],
              ),
            ),
            SizedBox(height: 10,),
        
            list(Image1: "assets/stat.png", subtitle: "Payments & Income", title: "Statistics",),
            list(Image1: "assets/save.png", subtitle: "Save more for kids", title: "Savings",),
            list(Image1: "assets/stock.jpg", subtitle: "High return investment", title: "Stocks & NFTs",),
            list(Image1: "assets/home.jpg", subtitle: "Buy some real investment", title: "Real estate",),
              
            SizedBox(height: 25,),
          ]),
        ),
      ),
    );
  }
}

class list extends StatelessWidget {
  const list({
    Key? key, required this.Image1,required  this.title, required this.subtitle, this.color1,
  }) : super(key: key);
  final String Image1;
  final title;
  final subtitle;
  final Color? color1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25,right: 25,top: 15),
      child: Column(
        children: [
          Row(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
            mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 80,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset(Image1),
                  ),
              SizedBox(width: 10,),

              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.black),),
                  Text(subtitle, style: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey),),
                ],
              ),
                ],
              ),
              IconButton(onPressed: (){}, icon: Image.asset("assets/arrow-right.png",)
            )
              ],
          ),
        ],
      ),
    );
  }
}

class button extends StatelessWidget {
  const button({
    Key? key, required this.icon, required this.title, this.color1,
  }) : super(key: key);
  final String icon;
  final String title;
  final Color? color1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          height: 90,
          // width: 100,
          decoration: BoxDecoration(color: Colors.grey[100],borderRadius: BorderRadius.circular(20),boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 40,
              spreadRadius: 10
            )
          ]),
          child: Center(
            child: Image.asset(icon,color: color1,)
            ),
            ),
            SizedBox(height: 8,),
            Text(title,style: TextStyle(fontSize: 18,color: Colors.grey[700],fontWeight: FontWeight.bold),)
      ],
    );
  }
}

