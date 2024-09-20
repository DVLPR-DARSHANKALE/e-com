import 'package:ecommerce/consts/color_pallete.dart';
import 'package:ecommerce/views/customtextfiled.dart';
import 'package:ecommerce/views/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _ispass = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 212.h,
            ),
            Text(
              "Sign in",
              style: TextStyle(
                  color: AppColor.Purpulecolor,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 46.h,
            ),
            customTextFiled(
                hinttext: "User Name", icon: Icons.person_outline_outlined),
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
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Forget Password ?",
                  style: TextStyle(
                      color: AppColor.Purpulecolor,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
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
              height: 175.h,
            ),
            TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have account ? ",
                    style: TextStyle(
                        color: AppColor.Purpulecolor,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.normal),
                  ),
                  TextButton(
                    style:
                        TextButton.styleFrom(padding: const EdgeInsets.all(-1)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                          ));
                    },
                    child: Text(
                      "Sign Up",
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
    );
  }
}
