import 'package:flutter/material.dart';
import 'package:light_banking/core/utils/app_colors.dart';

class Transcation {
  final IconData icon;
  final Color iconColor;
  final String transcationName;
  final String transcationType;
  final String price;

  Transcation({required this.icon, required this.transcationName, required this.transcationType, required this.price,required this.iconColor});
}

List<Transcation>transctions=[
  Transcation(icon: Icons.apple, transcationName: "Apple Store", transcationType: "Entertainment", price: "-\$5,99",iconColor: AppColor.black),
  Transcation(icon: Icons.wifi, transcationName: "Spotify", transcationType: "Music", price: "-\$12,99",iconColor: Colors.lightGreen),
  Transcation(icon: Icons.file_download_outlined,transcationName:"Money Transfer",transcationType:"Transaction",price: "-\$300",iconColor: AppColor.black),
  Transcation(icon: Icons.shopping_cart_outlined,transcationName: "Grocery",transcationType: "Shopping", price: "-\$88",iconColor: Color(0xffE16364)),

];