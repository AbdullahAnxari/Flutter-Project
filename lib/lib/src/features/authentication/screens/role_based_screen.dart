import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:edu_career/lib/src/constants/colors.dart';
import 'package:edu_career/lib/src/features/authentication/screens/Registration/RegisterationScreen.dart';
import 'package:edu_career/lib/src/widgets/role_card.dart';
import '../../../widgets/primary_button.dart';

class RoleBasedScreen extends StatefulWidget {
  const RoleBasedScreen({Key? key}) : super(key: key);

  @override
  State<RoleBasedScreen> createState() => _RoleBasedScreenState();
}

class _RoleBasedScreenState extends State<RoleBasedScreen> {
  double PagePadding = 30.0.w;
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: PagePadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /* -- Role -- */
              Center(
                child: Text(
                  'Choose your role',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32.sp,
                    color: kBlack87,
                    fontFamily: 'Reem Kufi Ink',
                    height: 4.h,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Choose whether you are looking for a job or you are an orgaonization/company that need employees',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    color: kBlack54,
                    fontFamily: 'Inter',
                    // height: 1,
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              Expanded(
                // flex: ,
                child: GridView.count(
                  crossAxisCount: 2, // Number of columns in the grid
                  padding:
                      const EdgeInsets.all(16.0), // Padding around the grid
                  mainAxisSpacing: 16.0, // Spacing between rows
                  crossAxisSpacing: 16.0, // Spacing between columns
                  children: const [
                    CustomCard(
                      title: 'Student',
                      imagePath: 'assets/logos/Vector1.png',
                    ),
                    CustomCard(
                      title: 'Developer',
                      imagePath: 'assets/logos/Vector1.png',
                    ),
                    CustomCard(
                      title: 'Institute',
                      imagePath: 'assets/logos/Vector1.png',
                    ),
                    CustomCard(
                      title: 'Company',
                      imagePath: 'assets/logos/Vector1.png',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: PrimaryButton(
                  text: 'Continue',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterationScreen()));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
