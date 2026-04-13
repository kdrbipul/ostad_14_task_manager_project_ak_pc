import 'package:flutter/material.dart';
import 'package:ostad_14_task_manager_project_ak_pc/screens/login_screen.dart';
import 'package:ostad_14_task_manager_project_ak_pc/widgets/screen_background.dart';
import '../utils/app_button.dart';
import '../utils/app_colors.dart';

class ForgetPasswordOtpVarification extends StatefulWidget {
  const ForgetPasswordOtpVarification({super.key});

  @override
  State<ForgetPasswordOtpVarification> createState() => _ForgetPasswordOtpVarificationState();
}

class _ForgetPasswordOtpVarificationState extends State<ForgetPasswordOtpVarification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Login Screen'),
      //   centerTitle: true,
      // ),
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 150),
              Text(
                'Your email address',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 10),
              TextFormField(decoration: InputDecoration(hintText: 'Email')),
              SizedBox(height: 10),
              AppButton(),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
