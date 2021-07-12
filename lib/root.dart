import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phone_packager/controller/dial_controller.dart';

class Root extends StatelessWidget {
  final DialController _dialController = Get.find<DialController>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      drawer: Drawer(),
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Icon(Icons.menu, color: Colors.black, size: size.height * 0.05),
                    Text("PACKAGOCH", style: TextStyle(color: Color(0xff005F99), fontSize: 24.0, fontWeight: FontWeight.bold)),
                    Container(
                      decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.black, width: 1.0)),
                      height: size.height * 0.1,
                      width: size.width * 0.1,
                    ),
                  ],
                ),
              ),
              // GridView.builder(gridDelegate: gridDelegate, itemBuilder: itemBuilder)
              SizedBox(height: size.height * 0.05),
              buildCard(bgColor: Colors.teal, ontap: () {}, text: "INTERNET", size: size, iconData: Icons.wifi),
              SizedBox(height: size.height * 0.02),
              buildCard(bgColor: Colors.teal, ontap: () {}, text: "PHONE", size: size, iconData: Icons.phone),
              SizedBox(height: size.height * 0.02),
              buildCard(bgColor: Colors.teal, ontap: () {}, text: "SMS", size: size, iconData: Icons.sms),
              SizedBox(height: size.height * 0.02),
              buildCard(bgColor: Colors.teal, ontap: () {}, text: "PREMIUM", size: size, iconData: Icons.mode_rounded),
              SizedBox(height: size.height * 0.02),
              buildCard(bgColor: Colors.teal, ontap: () {}, text: "OTHERS", size: size, iconData: Icons.more),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard({required Color bgColor, required Function() ontap, required String text, required Size size, required IconData iconData}) => Padding(
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
