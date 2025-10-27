import 'package:ecommerce_app/view_ui/auth/sign_up.dart';
import 'package:flutter/material.dart';

import '../../utils/app_color.dart';
import '../../utils/app_styles.dart';
import '../../widget/custom_text_field.dart';
import '../../widget/elevated_buton_widget.dart';
import '../home/home_screen.dart';

class SignIn extends StatefulWidget {
  static const String routeName = 'signin';


  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  var emailController = TextEditingController(text: 'manar@gmail.com');
  var passwordController = TextEditingController(text: '12345678');

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
                    image: AssetImage('assets/images/logobuybz.png', ),width: size.width*.8 ,
                    height: size.height*.2,color: Colors.white,
                  ),
                ),

                SizedBox(height: size.height*.01,),
                Text('Welcome Back To BuyZy', style: AppStyles.bold26White
                ),
                SizedBox(height: size.height*.04,),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(

                      onPressed: () {},
                      child: Text(

                        'Forgot password ?',
                        style: AppStyles.bold22White,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height*.06),
                ElevatedButtonWidget(text: 'Sign in',onPressed: (){
                  if (formKey.currentState!.validate()) {
              Navigator.pushNamed(context, HomeScreen.routeName);
                  }
                 setState(() {

                 });
                },)
               ,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(

                      onPressed: () {
                        Navigator.pushNamed(context, SignUp.routeName);
                        setState(() {

                        });
                      },
                      child: Text(
                        'Don’t have an account? Create Account',
                        style: AppStyles.med18White,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
