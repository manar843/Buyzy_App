import 'package:ecommerce_app/utils/app_color.dart';
import 'package:ecommerce_app/utils/app_styles.dart';
import 'package:ecommerce_app/view_ui/auth/sign_in.dart';
import 'package:flutter/material.dart';

import '../../widget/custom_text_field.dart';
import '../../widget/elevated_buton_widget.dart';

class SignUp extends StatefulWidget {
  static const String routeName = 'signup';

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var nameController = TextEditingController(text: 'manar ali');
  var emailController = TextEditingController(text: 'manar@gmail.com');
  var passwordController = TextEditingController(text: '12345678');
  var phoneController = TextEditingController(text: '01156304117');
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.mainColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image(
                    image: AssetImage('assets/images/logobuybz.png', ),width: size.width*.71 ,
                   height: size.height*.2,color: Colors.white,
                  ),
                ),
                Text('Full Name', style: AppStyles.bold22White
                ),
                SizedBox(height: size.height*.01,),
                CustomTextFormField(
                    hintText: 'Enter your full name',
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'please enter your full name';
                    }
                    return null; //valid
                  },
                  controller: nameController,
                ),
                SizedBox(height: size.height*.03,),
                Text('Mobile Number', style: AppStyles.bold22White
                ),
                SizedBox(height: size.height*.01,),
                CustomTextFormField(hintText: 'Enter your mobile no.' ,
                  controller: phoneController,
                  validator: (text){
                  if(text==null||text.isEmpty){
                    return 'please enter  your mobile no.';
                  }
                  return null;
                  },
                  keyboardType:TextInputType.number ,),
                SizedBox(height: size.height*.03,),
                Text('E-mail address', style: AppStyles.bold22White
                ),
                SizedBox(height: size.height*.01,),
                CustomTextFormField(hintText: 'Enter your email address' ,
                  controller: emailController,
                  validator: (text){
                  if(text==null||text.isEmpty){
                    return 'please enter  your  email address';
                  }
                  if (!RegExp(
                    r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}',
                  ).hasMatch(text)) {
                    return 'Enter a valid email';
                  }
                  return null;
                  },
                  keyboardType:TextInputType.emailAddress ,),
                SizedBox(height: size.height*.03,),
                Text('Password', style: AppStyles.bold22White
                ),
                SizedBox(height: size.height*.01,),
                CustomTextFormField(hintText: 'Enter your password' ,
                  controller: passwordController,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'enter password';
                    }
                    if (text.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                  obscureText: true,

                  ),
                SizedBox(height: size.height*.06),
                ElevatedButtonWidget(text: 'Sign up',onPressed: (){
                  if (formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, SignIn.routeName);

                  }
                  setState(() {

                  });
                },)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
