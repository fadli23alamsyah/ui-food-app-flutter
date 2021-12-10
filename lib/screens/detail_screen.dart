import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({ Key? key }) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          color: Colors.black,
          iconSize: 25,
          splashRadius: 23,
          padding: const EdgeInsets.only(left: 10),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            color: Colors.black,
            iconSize: 25,
            splashRadius: 23,
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(child: Hero(tag: "salad",child: Image.asset("assets/images/salad.png")))
            ),
            // const Spacer(),
            const Text(
              "Mediterranean",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
            Row(
              children: [
                const Expanded(
                  child: Text(
                    "Chicken Salad",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: (){},
                      iconSize: 15,
                      splashRadius: 20,
                      color: Colors.white, 
                      icon: const Icon(Icons.add,),
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                const Text("1", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                const SizedBox(width: 10,),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: (){},
                      iconSize: 15,
                      splashRadius: 20,
                      color: Colors.white, 
                      icon: const Icon(Icons.remove),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            const Text(
              '''Fresh and healthy salad made with our own Chef Recipe. Special healthy and fat free dish for those who want to lose weight.''',
              style: TextStyle(
                fontSize: 15,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 15,),
            Row(
              children: const [
                Text(
                  "Delivery Time",
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
                SizedBox(width: 10,),
                Icon(Icons.timer),
                SizedBox(width: 5,),
                Text(
                  "25 Mins",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Total Price",
                      style: TextStyle(
                        fontSize: 16
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      "\$24.00",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900
                      ),
                    ),
                  ],
                ),
                Transform.rotate(
                  angle: pi / 4,
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Transform.rotate(
                      angle: - pi / 4,
                      child: Center(
                        child: IconButton(
                          onPressed: (){},
                          splashRadius: 20,
                          color: Colors.white, 
                          icon: const Icon(Icons.shopping_cart),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}