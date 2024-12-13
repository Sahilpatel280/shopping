import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listtileviewdesign/utils/constants/text_strings.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';


class Forgetscreen extends StatelessWidget {
 Forgetscreen({super.key});


 final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(right: 29.w,left: 29.w,top: 63.h),
          child: Column(
            children: [
              Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      TTexts.forgotTitle,
                      style: TextStyle(
                        color: TColors.loginTitleTextHeading,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w700,
                        fontSize:36.sp,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32.h,),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.email),
                          prefixStyle: const TextStyle(
                            color: TColors.loginPrefixIcon,
                          ),
                          border:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: TColors.fromBorder, width: 2.0.w),
                          ),
                          labelText: TTexts.forgetemail,
                          labelStyle: TextStyle(
                            color: TColors.logintextFromColor,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Montserrat",
                          ),
                          fillColor: Color(0xFFF3F3F3), // Add background color here
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: TColors.fromBorder, width: 2.0.w),
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
                    ],
                  )),
              SizedBox(height: 26.h,),
              Column(
                children: [

                  Align(
                    alignment: Alignment.topLeft,
                    child: RichText(
                        text:TextSpan(
                            style: TextStyle(
                              color: TColors.logintextFromColor,
                              fontSize: TSizes.fontSizeXs.sp,
                            ),
                            children:[
                              TextSpan(
                                text: "* ",
                                style: TextStyle(
                                  color:TColors.primary,
                                  fontSize: TSizes.fontSizeXs.sp,
                                ),
                              ),
                              TextSpan(
                                text: " We will send you a message to set or reset \n your new password",
                              ),
                            ]
                        )),
                  ),
                ],
              ),
              SizedBox(height: 26.h,),
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
                        Navigator.pop(context);
                      },
                      child: Text(
                        TTexts.submit,
                        style: TextStyle(
                          color: TColors.white,
                          fontSize: 20.sp,
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
        ),
    );
  }
}
