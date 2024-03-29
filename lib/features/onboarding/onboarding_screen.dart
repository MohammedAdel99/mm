import 'package:flutter/material.dart';
import 'widgets/doctor_logo_and_name.dart';
import 'widgets/doctor_image_and_text.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:doctor_app/core/helpers/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctor_app/core/widgets/app_text_button.dart';



class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h),
          child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
              const DoctorLogoAndName(),
              SizedBox(height:30.h),
              const DoctorImageAndText(),
              
              Padding(
                padding:  EdgeInsets.symmetric( horizontal: 30.w),
                child: Column(
                  children: [
                    Text(
                      textAlign:TextAlign.center,
                        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                        style:TextStyles.font13GrayRegular),
                    SizedBox(height: 20.h,),
                   AppTextButton(buttonText: 'Get Started', onPressed: () => context.pushNamed(Routes.loginScreen)),      
                  ],
                ),
              ),
                  
              ]),
          
          ),
        ),
      ),

    );
  }
}