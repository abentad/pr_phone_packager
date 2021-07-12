import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phone_packager/controller/dial_controller.dart';

class DailyInternet extends StatelessWidget {
  final DialController _dialController = Get.find<DialController>();

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
              buildCard(bgColor: Colors.teal, ontap: () => _dialController.buyDaily3BirrInternetPackage(), text: "3 BIRR", size: size, iconData: Icons.wifi),
              SizedBox(height: size.height * 0.02),
              buildCard(bgColor: Colors.teal, ontap: () => _dialController.buyDaily3BirrInternetPackage(), text: "5 BIRR", size: size, iconData: Icons.wifi),
              SizedBox(height: size.height * 0.02),
              buildCard(bgColor: Colors.teal, ontap: () {}, text: "10 BIRR", size: size, iconData: Icons.wifi),
              SizedBox(height: size.height * 0.02),
              buildCard(bgColor: Colors.teal, ontap: () {}, text: "15 BIRR", size: size, iconData: Icons.wifi),
              SizedBox(height: size.height * 0.02),
              buildCard(bgColor: Colors.teal, ontap: () {}, text: "20 BIRR", size: size, iconData: Icons.wifi),
              SizedBox(height: size.height * 0.02),
              buildCard(bgColor: Colors.teal, ontap: () {}, text: "25 BIRR", size: size, iconData: Icons.wifi),
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
