import 'package:app/widgets/support_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                )
              ],
        )
      )
    );
  }
}
