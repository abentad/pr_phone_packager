import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phone_packager/screens/internet/daily_internet.dart';

class InternetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // GridView.builder(gridDelegate: gridDelegate, itemBuilder: itemBuilder)
              SizedBox(height: size.height * 0.05),
              buildCard(bgColor: Colors.teal, ontap: () => Get.to(() => DailyInternet(), transition: Transition.cupertino), text: "Daily", size: size, iconData: Icons.wifi),
              SizedBox(height: size.height * 0.02),
              buildCard(bgColor: Colors.teal, ontap: () {}, text: "Weekly", size: size, iconData: Icons.wifi),
              SizedBox(height: size.height * 0.02),
              buildCard(bgColor: Colors.teal, ontap: () {}, text: "Bi-weekly", size: size, iconData: Icons.wifi),
              SizedBox(height: size.height * 0.02),
              buildCard(bgColor: Colors.teal, ontap: () {}, text: "Weekend", size: size, iconData: Icons.wifi),
              SizedBox(height: size.height * 0.02),
              buildCard(bgColor: Colors.teal, ontap: () {}, text: "Monthly", size: size, iconData: Icons.wifi),
              SizedBox(height: size.height * 0.02),
              buildCard(bgColor: Colors.teal, ontap: () {}, text: "OTHERS", size: size, iconData: Icons.wifi),
            ],
          ),
        ),
      ),
    );
  }

  static Widget buildCard({required Color bgColor, required Function() ontap, required String text, required Size size, required IconData iconData}) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: InkWell(
          onTap: ontap,
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            padding: const EdgeInsets.only(left: 50),
            height: size.height * 0.13,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(iconData, color: Colors.white),
                SizedBox(width: size.width * 0.05),
                Text(text, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18.0)),
              ],
            ),
          ),
        ),
      );
}
