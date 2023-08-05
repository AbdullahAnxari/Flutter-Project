import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:edu_career/lib/src/features/authentication/screens/Login/login_screen.dart';
import 'package:edu_career/lib/src/features/authentication/screens/role_based_screen.dart';
import 'package:edu_career/lib/src/widgets/outlined_button.dart';

import '../../../../constants/colors.dart';
import '../../../../widgets/elevated_button.dart';
import '../../../../widgets/skip_button.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final List<String> _imageList = [
    'assets/images/on_boarding_images/Career progress-pana 1.png',
    'assets/images/on_boarding_images/Job hunt-amico 1.png',
    'assets/images/on_boarding_images/Resume-amico 1.png',
    'assets/images/on_boarding_images/Browser stats-amico 1.png',
  ];

  final List<String> _headingList = [
    'Start your  career now',
    'University',
    'Student',
    'IT Professional',
    'IT Industry',
  ];

  final List<String> _descriptionList = [
    'Bridging universities and industries for endless possibilities.',
    'Showcase your University, mission, and values to attract top talent.',
    'Are you a student looking to take your career to the next level?',
    'As an IT professional, make a difference in the lives of aspiring tech experts while earning on our app.',
    'As an IT Industry,  Attract top talent, prepare them for the job market, and grow your business with EduCareer.',
  ];

  int _currentIndex = 0;

  double PagePadding = 30.0.w;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: PagePadding,
            vertical: PagePadding,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /* -- Carousel images -- */
                SizedBox(
                  height: height * 0.6.h,
                  child: CarouselSlider(
                    items: _imageList.map((image) {
                      return Center(
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                        ),
                      );
                    }).toList(),
                    options: CarouselOptions(
                      height: 264.h,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
                /* -- heading and titles -- */
                Column(
                  children: [
                    Text(
                      _headingList[_currentIndex],
                      style: TextStyle(
                        color: kBlueColour,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      _descriptionList[_currentIndex],
                      style: TextStyle(
                        color: kGreyColour,
                        fontSize: 18.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                //-- buttons --
                Row(
                  children: [
                    CustomOutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      text: 'Login',
                      outlineWidth: 2.0,
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: CustomElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RoleBasedScreen(),
                            ),
                          );
                        },
                        text: 'Register',
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
