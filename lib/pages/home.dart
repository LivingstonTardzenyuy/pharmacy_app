import 'package:app/widgets/support_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool allmedicine = true, suppliment = false, vitamins=false, herbal=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Color(0xFFe4e0f4),
          body: Container(
            margin: const EdgeInsets.only(top: 80, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 ClipRRect(
                   borderRadius: BorderRadiusGeometry.circular(60),
                   child: Image.asset("assets/images/steak.jpeg", height: 80, width: 80, fit: BoxFit.cover),
                 ),
                const SizedBox(height: 20,),
                Text("Your Trusted",
                  style: AppWidget.headlineTextStyle(25),
                ),
                Text( "Online Pharmacy",
                  style: AppWidget.lightTextStyle(28)
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              // margin: EdgeInsets.only(right: 30,),
                              padding: EdgeInsets.only(right: 48, left: 20),
                              height: 70,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(color: Colors.white, width: 1.5)
                              ),
                              child: Center(
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Search Medicine....",
                                    hintStyle: AppWidget.lightTextStyle(16),
                                    suffixIcon: Container(
                                      padding: const EdgeInsets.only(right: 1),
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.circular(18)
                                      ),
                                      child: Icon(Icons.search, color: Colors.white),
                                    )
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),


                    ],
                  ),
                ),

                const SizedBox(height: 20,),
                Container(
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      // AppWidget.selectedCategory("All Medicine"),
                      allmedicine ? AppWidget.selectedCategory("All Medicines") : GestureDetector(
                        onTap: () {
                          allmedicine = true;
                          suppliment = false;
                          vitamins = false;
                          herbal = false;
                          
                          setState(() {

                          });
                        },
                        child: Container(
                          height: 50,
                          child: Center(
                            child: Text(
                                "All Medicine",
                              style: AppWidget.lightTextStyle(20.0)
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      suppliment ? AppWidget.selectedCategory("Suppliment") : GestureDetector(
                        onTap: () {
                          allmedicine = false;
                          suppliment = true;
                          vitamins = false;
                          herbal = false;

                          setState(() {

                          });
                        },
                        child: Container(
                          height: 50,
                          child: Center(
                            child: Text(
                                "Suppliment",
                              style: AppWidget.lightTextStyle(20.0)
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      vitamins ? AppWidget.selectedCategory("Vitamins") : GestureDetector(
                        onTap: () {
                          allmedicine = false;
                          suppliment = false;
                          vitamins = true;
                          herbal = false;

                          setState(() {

                          });
                        },
                        child: Container(
                          height: 50,
                          child: Center(
                            child: Text(
                                "Vitamins",
                                style: AppWidget.lightTextStyle(20.0)
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 10,),
                      herbal ? AppWidget.selectedCategory("Herbal") : GestureDetector(
                        onTap: () {
                          allmedicine = false;
                          suppliment = false;
                          vitamins = false;
                          herbal = true;

                          setState(() {

                          });
                        },
                        child: Container(
                          height: 50,
                          child: Center(
                            child: Text(
                                "Herbal",
                                style: AppWidget.lightTextStyle(20.0)
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                const SizedBox(height: 15,),
                Container(
                    margin: const EdgeInsets.only(right: 30.0),
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      // color: Color(0xffbab3a6)
                      gradient: LinearGradient(colors: [Color(0xffbab3a6), Color(0xffddd7cb), Color(0xffa59c8f)], begin: Alignment.topLeft, end: Alignment.bottomRight)
                    // color: Color(0xFFbab3a6)
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Center(
                            child: Image.asset(
                                "assets/images/steak.jpeg",
                                height: 200, fit: BoxFit.cover,
                            )
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(color: Color(0xffc8c1a5)),
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Column(
                              children: [
                                Text(
                                    "Unique Medicine",
                                    style: AppWidget.whiteTextStyle(20)
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                )

              ],
        )
      )
    );
  }
}
