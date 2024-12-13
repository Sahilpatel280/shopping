import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listtileviewdesign/utils/constants/text_strings.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class Registerfrom extends StatelessWidget {
   Registerfrom({
    super.key,
  });

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                prefixStyle: TextStyle(
                  color: TColors.loginPrefixIcon,
                ),
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: TColors.fromBorder, width: 2.0.w),
                ),
                labelText: TTexts.userName,
                labelStyle: TextStyle(
                  color: TColors.logintextFromColor,
                  fontSize: TSizes.fontSizeXs.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Montserrat",
                ),
                fillColor: Color(0xFFF3F3F3), // Add background color here
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: TColors.fromBorder, width: 2.0),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              validator: (value){
                if(value!.isEmpty ||
                    !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value)
                ){
                  return "Enter email Id";
                }
              } ,
            ),
            SizedBox(height: 31.h,),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: false,
              decoration: InputDecoration(
                fillColor: Color(0xFFF3F3F3), // Add background color here
                filled: true, // Enable background color
                prefixIcon: Icon(Icons.lock),
                prefixStyle: TextStyle(
                  color: TColors.loginPrefixIcon,
                ),
                suffixIcon: Icon(Icons.visibility),
                suffixStyle: TextStyle(
                  color: TColors.loginSuffixIcon,
                ),
                labelText: TTexts.password,
                labelStyle: TextStyle(
                  color: TColors.logintextFromColor,
                  fontSize: TSizes.fontSizeXs.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Montserrat",
                ),
                border:OutlineInputBorder(
                  borderSide: BorderSide(color: TColors.fromBorder, width: 2.0.w),
                  borderRadius: BorderRadius.circular(4),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: TColors.fromBorder, width: 2.0.w),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              validator: (value) {
                if (!value!.contains(RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$'))) {
                  return "Password must contain a number";
                }
                return null; // Return null if the validation passes
              },
            ),
            SizedBox(height: 31.h,),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: false,
              decoration: InputDecoration(
                fillColor: Color(0xFFF3F3F3), // Add background color here
                filled: true, // Enable background color
                prefixIcon: Icon(Icons.lock),
                prefixStyle: TextStyle(
                  color: TColors.loginPrefixIcon,
                ),
                suffixIcon: Icon(Icons.visibility),
                suffixStyle: TextStyle(
                  color: TColors.loginSuffixIcon,
                ),
                labelText: TTexts.newPassword,
                labelStyle: TextStyle(
                  color: TColors.logintextFromColor,
                  fontSize: TSizes.fontSizeXs.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Montserrat",
                ),
                border:OutlineInputBorder(
                  borderSide: BorderSide(color: TColors.fromBorder, width: 2.0.w),
                  borderRadius: BorderRadius.circular(4),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: TColors.fromBorder, width: 2.0.w),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              validator: (value) {
                if (!value!.contains(RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$'))) {
                  return "Password must contain a number";
                }
                return null; // Return null if the validation passes
              },
            ),
            SizedBox(height: 19.h,),
            Column(
              children: [
                RichText(
                    text:TextSpan(
                  style: TextStyle(
                    color: TColors.logintextFromColor,
                    fontSize: TSizes.fontSizeXs,
                  ),
                  children:[
                    TextSpan(
                      text: "By clicking the ",
                    ),
                    TextSpan(
                      text: "Register",
                      style: TextStyle(
                        color:TColors.primary,
                        fontSize: TSizes.fontSizeXs.sp,
                      ),
                    ),
                    TextSpan(
                      text: " button, you agree \nto the public offer",
                    ),
                  ]
                )),
              ],
            ),
            SizedBox(height: 38,),
            SizedBox(
              width: double.infinity,
              child: Container(
                height: 55.h,
                width: 317.w,
                decoration: BoxDecoration(
                  color: TColors.primary,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: TextButton(
                    onPressed: (){
                      if (_formKey.currentState!.validate()) {
                        print("Successful login");
                      } else {
                        print("Not successful register");
                      }
                    },
                    child: Text(
                      TTexts.createAccount,
                      style: TextStyle(
                        color: TColors.white,
                        fontSize: 20.sp,
                      ),
                    )),
              ),
            ),


          ],
        )
    );
  }
}
