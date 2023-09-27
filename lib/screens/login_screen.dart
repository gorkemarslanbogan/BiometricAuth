import 'package:animal_project/helper/ui_helper.dart';
import 'package:animal_project/ui/widget/custom_textfield_widget.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidht = MediaQuery.of(context).size.width;
    return  SingleChildScrollView(
      
      child: Padding(
          padding: UiHelper.GeneralAppPadding,
          child: Column(
            children: [
              textColumnWidget(context, screenHeight, screenWidht),
              SizedBox(height: screenHeight/18),
              CustomTextFieldWidget(hintText: UiHelper.Email),
              SizedBox(height: screenHeight/45),
              CustomTextFieldWidget(hintText: UiHelper.Password),
            ],
          ),
        ),
    );
  }



Widget textColumnWidget(context, double height, double width){
  return  Row(
      children: [
               Column(
                  children: [
                  const Text(
                    UiHelper.LoginScreenText, style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 40.0
                  )),
                    RichText(
                    text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children:  [
                    customTextSpan("If you're new/ ", Colors.grey.shade400),
                    customTextSpan("Create Account", Colors.black),
                    ],
                  ),  
                  ),
                ],
            ),
              Expanded(
              child:  Padding(
                padding: UiHelperForThisPage.imagePadding,
                child: TransformImage(height: height),
              )) 
    ],
  );
}

TextSpan customTextSpan(String text, Color color) {
    return  TextSpan(
          text: text,
          style: TextStyle(
          color: color,
          fontSize: 15.0 
        ),
    );
  }
}

class TransformImage extends StatelessWidget {
   const TransformImage({
    super.key, required this.height});
   final double height;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
    angle: UiHelperForThisPage.imageAngle,
    alignment: Alignment.center,
    child: Image.asset(UiHelper.ImageLock, height: height/6,));
  }
}

class UiHelperForThisPage {
  static const EdgeInsets imagePadding = EdgeInsets.only(top: 20, left: 15);
  static const piNumber = 3.14;
  static const imageAngle = 30 * piNumber / 180;
}