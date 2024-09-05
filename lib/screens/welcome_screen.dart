import 'package:clothing_store_app/util/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 85,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  child: Container(
                    width: 160,
                    height: 400,
                    color: Colors.white,
                    child: SvgPicture.asset('assets/images/boyimage1.svg'),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(70),
                      child: Container(
                        width: 140,
                        height: 250,
                        color: Colors.white,
                        child: SvgPicture.asset('assets/images/girlimage2.svg'),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(70),
                      child: Container(
                        width: 140,
                        height: 140,
                        color: Colors.white,
                        child: SvgPicture.asset('assets/images/girlimage1.svg'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text.rich(
            textAlign: TextAlign.center,
            TextSpan(
              children: [
                TextSpan(
                    text: 'The ',
                    style: TextStyle(
                        color: AppColors.primaryTextColor,
                        fontSize: 26,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text: 'Fashion App',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: AppColors.secondaryTextColor)),
                TextSpan(
                    text: ' That Makes You Look Your Best',
                    style: TextStyle(
                        color: AppColors.primaryTextColor,
                        fontSize: 26,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adispiscing elit, sed do eiusmod tempor incididunt',
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.primaryTextColor),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(300, 50),
                  backgroundColor: AppColors.primaryColor),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/onboardingscreen1',
                );
              },
              child: Text(
                "Let's Get Started",
                style: TextStyle(
                    color: AppColors.onPrimaryTextColor, fontSize: 16),
              )),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account? ',
                  style: TextStyle(
                      color: AppColors.primaryTextColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500)),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/signinscreen');
                },
                child: Text('Sign In',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                        color: AppColors.secondaryTextColor)),
              )
            ],
          ),
        ],
      ),
    );
  }
}
