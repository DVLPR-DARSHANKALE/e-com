import 'package:ecommerce/consts/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextField customTextFiled({
  bool obs = false,
  hinttext,
  icon,
  controller,
  Widget? suffixicon,
}) {
  return TextField(
    obscureText: obs,
    controller: controller,
    decoration: InputDecoration(
      hintText: hinttext,
      prefixIcon: Icon(
        icon,
        color: AppColor.Purpulecolor,
        size: 25,
      ),
      suffixIcon: suffixicon,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: AppColor.Purpulecolor)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: AppColor.Purpulecolor)),
      hintStyle: TextStyle(
          color: Colors.grey.shade500,
          fontSize: 15.sp,
          fontWeight: FontWeight.normal),
    ),
  );
}
