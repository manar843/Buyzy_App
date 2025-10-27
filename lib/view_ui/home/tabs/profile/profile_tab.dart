import 'package:ecommerce_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

import '../../../../utils/app_color.dart';
import '../../../../widget/custom_text_field.dart';

class ProfileTab extends StatelessWidget {
  static const String routeName = 'ProfileTab';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome, Mohamed', style: AppStyles.bold20mainColor,),
            SizedBox(height: size.height*.03,),
            Text('Enter your full name', style: AppStyles.bold20mainColor
            ),
            SizedBox(height: size.height*.01,),
            CustomTextFormField(
              hintText: 'Enter your full name',

              suffixIcon: Icon(Icons.edit,color: AppColor.mainColor,),
              borderSideColor: AppColor.mainColor,
            ),
            SizedBox(height: size.height*.03,),
            Text('Enter your mobile no.', style: AppStyles.bold20mainColor
            ),
            SizedBox(height: size.height*.01,),
            CustomTextFormField(hintText: 'Enter your mobile no.' ,
              // controller: phoneController,
              // validator: (text){
              //   if(text==null||text.isEmpty){
              //     return 'please enter  your mobile no.';
              //   }
              //   return null;
              // },
              suffixIcon: Icon(Icons.edit,color: AppColor.mainColor,),
              borderSideColor: AppColor.mainColor,
              keyboardType:TextInputType.number ,),
            SizedBox(height: size.height*.03,),
            Text('E-mail address', style: AppStyles.bold20mainColor
            ),
            SizedBox(height: size.height*.01,),
            CustomTextFormField(hintText: 'Enter your email address' ,
              suffixIcon: Icon(Icons.edit,color: AppColor.mainColor,),
              borderSideColor: AppColor.mainColor,
              // controller: emailController,
              // validator: (text){
              //   if(text==null||text.isEmpty){
              //     return 'please enter  your  email address';
              //   }
              //   if (!RegExp(
              //     r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}',
              //   ).hasMatch(text)) {
              //     return 'Enter a valid email';
              //   }
              //   return null;
              // },
              keyboardType:TextInputType.emailAddress ,),
            SizedBox(height: size.height*.03,),
            Text('Enter your password', style: AppStyles.bold20mainColor
            ),
            SizedBox(height: size.height*.01,),
            CustomTextFormField(hintText: 'Enter your password' ,
              suffixIcon: Icon(Icons.edit,color: AppColor.mainColor,),
              borderSideColor: AppColor.mainColor,
              obscureText: true,

            ),
          ]
              ),
        ));
  }
}
