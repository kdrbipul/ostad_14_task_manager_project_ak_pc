import 'package:flutter/material.dart';
import 'package:ostad_14_task_manager_project_ak_pc/screens/login_screen.dart';
import 'package:ostad_14_task_manager_project_ak_pc/widgets/screen_background.dart';
import '../utils/app_button.dart';
import '../utils/app_colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ForgetPasswordSetPassword extends StatefulWidget {
  const ForgetPasswordSetPassword({super.key});

  @override
  State<ForgetPasswordSetPassword> createState() =>
      _ForgetPasswordSetPasswordState();
}

class _ForgetPasswordSetPasswordState extends State<ForgetPasswordSetPassword> {
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
                'Set Password',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 10),
              Text(
                'Minimum Password Should be 8 characters and Combination of '
                'Uppercase, Lowercase, Numbers and Special Characters',
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge!.copyWith(color: Colors.grey),
              ),
              SizedBox(height: 10),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(hintText: 'Password'),
              ),
              SizedBox(height: 10),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(hintText: 'Confirm Password'),
              ),
              SizedBox(height: 10),
              AppButton(
                child: Icon(Icons.arrow_forward),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
              ),
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
                        MaterialPageRoute(builder: (context) => LoginScreen()),
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
