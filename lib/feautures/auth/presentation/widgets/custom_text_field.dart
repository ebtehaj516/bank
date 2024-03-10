import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../generated/assets.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key, required this.text,  this.icon,this.field=false, this.image=false,});
final IconData? icon;
  final String text;
  final bool? field;
  final bool? image;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText=true;
  bool visible=false;
 String? suffixIcon;
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          bulidText(),
          TextField(
            style: CustomTextStyles.poppins400style14.copyWith(
              color: AppColor.black,),

            cursorColor: AppColor.lightGray,
            obscureText: visible,
            decoration: InputDecoration(
              enabledBorder: underLine(),
              focusedBorder: underLine(),
              prefixIcon: Padding(
                  padding: const EdgeInsets.only(right: 18),
                  child: Icon(
                    widget.icon, color: AppColor.dGray, size: 18,)
              ),

              suffixIcon:  widget.field!? IconButton(
                icon: Icon(

                   _obscureText ? Icons.visibility_off_outlined:Icons.visibility_outlined , color: AppColor.dGray, size: 18,),
                onPressed: (){
                  setState(() {
                    _obscureText=!_obscureText;
                    visible=!_obscureText;
                  });
                },
              ):Padding(padding: const EdgeInsets.only(right: 18),

                ),
              suffix: widget.image!? SvgPicture.asset(Assets.imagesColorImage,width: 30,height: 18,):Container()
            ),
          ),
        ],
      ),
    );
  }

  Widget bulidText() {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Text(widget.text, style: CustomTextStyles.poppins400style14.copyWith(
          color: AppColor.lightGray),),
    );
  }

  UnderlineInputBorder underLine() {
    return UnderlineInputBorder(
        borderSide: BorderSide(
            color: AppColor.white1,
          width: 2,
        )
    );
  }
}
