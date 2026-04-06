import 'package:flutter/material.dart';
import 'package:ostad_14_task_manager_project_ak_pc/widgets/screen_background.dart';

import '../utils/app_button.dart';
import '../utils/app_colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                'Join With Us',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(hintText: 'Email')),
              SizedBox(height: 10),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(hintText: 'Password'),
              ),
              SizedBox(height: 10),
              AppButton(),
              SizedBox(height: 30),
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Sign Up',
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
            ],
          ),
        ),
      ),
    );
  }
}


