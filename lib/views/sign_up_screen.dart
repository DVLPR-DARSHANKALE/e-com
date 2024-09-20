import 'package:ecommerce/consts/color_pallete.dart';
import 'package:ecommerce/views/customtextfiled.dart';
import 'package:ecommerce/views/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _ispass = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.antiAlias,
      children: [
        Positioned(
          right: -28.w,
          top: -88.h,
          child: Container(
            clipBehavior: Clip.antiAlias,
            height: 128.h,
            width: 128.w,
            decoration: const BoxDecoration(
                color: Color(0xff471AA0), shape: BoxShape.circle),
          ),
        ),
        Positioned(
          right: -80.w,
          top: -47.h,
          child: Container(
            clipBehavior: Clip.antiAlias,
            height: 128.h,
            width: 128.w,
            decoration: const BoxDecoration(
                color: Color(0xffBB84E8), shape: BoxShape.circle),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 140.h,
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(
                      color: AppColor.Purpulecolor,
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 46.h),
                customTextFiled(
                  hinttext: "Full Name",
                  icon: Icons.person_outline_sharp,
                ),
                SizedBox(
                  height: 40.h,
                ),
                customTextFiled(
                  hinttext: "Email",
                  icon: Icons.email_outlined,
                ),
                SizedBox(
                  height: 40.h,
                ),
                customTextFiled(
                    obs: _ispass,
                    hinttext: "Password",
                    icon: Icons.lock_outline_rounded,
                    suffixicon: IconButton(
                        onPressed: () {
                          setState(() {
                            _ispass = !_ispass;
                          });
                        },
                        icon: _ispass
                            ? const Icon(Icons.visibility_outlined)
                            : const Icon(Icons.visibility_off_outlined))),
                SizedBox(
                  height: 40.h,
                ),
                customTextFiled(
                    obs: _ispass,
                    hinttext: " Conform Password",
                    icon: Icons.lock_outline_rounded,
                    suffixicon: IconButton(
                        onPressed: () {
                          setState(() {
                            _ispass = !_ispass;
                          });
                        },
                        icon: _ispass
                            ? const Icon(Icons.visibility_outlined)
                            : const Icon(Icons.visibility_off_outlined))),
                SizedBox(
                  height: 95.h,
                ),
                SizedBox(
                  height: 50.h,
                  width: 390.w,
                  child: FilledButton(
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(AppColor.Textfiledecolor),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 90.h,
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account ?  ",
                        style: TextStyle(
                            color: AppColor.Purpulecolor,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.normal),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(1)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignInScreen(),
                              ));
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                              color: AppColor.Purpulecolor,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
