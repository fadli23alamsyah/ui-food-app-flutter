import 'package:flutter/material.dart';
import 'package:salad_app/screens/detail_screen.dart';
import 'package:salad_app/widgets/filter_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: (){},
          color: Colors.black,
          iconSize: 30,
          splashRadius: 23,
          icon: const Icon(Icons.notes_rounded),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            color: Colors.black,
            iconSize: 30,
            splashRadius: 23,
            icon: const Icon(Icons.search_rounded),
          ),
        ],
      ),
      // bottomNavigationBar: 
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Delicious Salads",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        "We made fresh and healthy food",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black54
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: ListView(
                          physics: const ScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          padding: const EdgeInsets.only(left: 20),
                          children: [
                            filterButton("Salads", true),
                            const SizedBox(width: 10,),
                            filterButton("Soups", false),
                            const SizedBox(width: 10,),
                            filterButton("Grilled", false),
                          ],
                        ),
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: IconButton(
                        onPressed: (){}, 
                        splashRadius: 20,
                        iconSize: 32,
                        icon: const Icon(Icons.filter_alt_outlined)
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30,),
                SizedBox(
                  height: 150,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          padding: const EdgeInsets.only(right: 15, top: 28, bottom: 28),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                            color: Colors.grey[200]
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Chicken Salad",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Text(
                                    "Chicken with Avocado",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Text(
                                    "\$31.00",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 12,),
                              CircleAvatar(
                                radius: 14,
                                backgroundColor: Colors.black,
                                child: IconButton(
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (builder)=>const DetailScreen()));
                                  }, 
                                  iconSize: 12,
                                  splashRadius: 15,
                                  icon: Icon(Icons.add, color: Colors.grey[200],)
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(80),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 10,
                                  spreadRadius: 1,
                                  offset: Offset(0,10)
                                )
                              ]
                            ),
                            child: const Hero(
                              tag: "salad",
                              child: CircleAvatar(
                                radius: 75,
                                backgroundColor: Colors.transparent,
                                backgroundImage: AssetImage("assets/images/salad.png"),
                                // child: Image.asset("assets/images/salad.png",),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                GridView.count(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  physics: const ScrollPhysics(),
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 10,
                  shrinkWrap: true,
                  childAspectRatio: 0.65,
                  crossAxisCount: 2,
                  children: List.generate(4, (index){
                    return Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.5,
                          margin: const EdgeInsets.only(top: 30, bottom: 10, left: 8, right: 8),
                          padding: const EdgeInsets.only(top: 120) ,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Column(
                            children: const [
                              Text(
                                "Chicken Salad",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text(
                                "Chicken with Avocado",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text(
                                "\$31.00",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 10,
                                spreadRadius: 1,
                                offset: Offset(0,10)
                              )
                            ]
                          ),
                          child: const CircleAvatar(
                            radius: 65,
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage("assets/images/salad.png"),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.black,
                            child: IconButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (builder)=>const DetailScreen()));
                              }, 
                              iconSize: 12,
                              splashRadius: 15,
                              icon: Icon(Icons.add, color: Colors.grey[200],)
                            ),
                          ),
                        ),
                      ],
                    ) ;
                  }),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.12,
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.1,
              margin: const EdgeInsets.only(right: 20, left: 20, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(32),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.40),
                    offset: const Offset(0,65),
                    blurRadius: 20,
                    // color: Colors.black.withOpacity(.15),
                    // blurRadius: 30,
                    // offset: const Offset(0, 10),
                  )
                ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: (){},
                    color: Colors.white,
                    splashRadius: 20,
                    iconSize: 30,
                    icon: const Icon(Icons.home_outlined),
                  ),
                  IconButton(
                    onPressed: (){},
                    color: Colors.white,
                    splashRadius: 20,
                    iconSize: 30,
                    icon: const Icon(Icons.account_balance_wallet_outlined),
                  ),
                  IconButton(
                    onPressed: (){},
                    color: Colors.white,
                    splashRadius: 20,
                    iconSize: 30,
                    icon: const Icon(Icons.chat_outlined),
                  ),
                  IconButton(
                    onPressed: (){},
                    color: Colors.white,
                    splashRadius: 20,
                    iconSize: 30,
                    icon: const Icon(Icons.person_outline_rounded),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}