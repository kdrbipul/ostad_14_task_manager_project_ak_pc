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
              SizedBox(height: 100),
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
                keyboardType: TextInputType.text,
                  decoration: InputDecoration(hintText: 'First Name')),
              SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.text,
                  decoration: InputDecoration(hintText: 'Last Name')),
              SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: 'Mobile')),
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
              AppButton(child: Icon(Icons.arrow_forward), onPressed: () {  },),
              SizedBox(height: 30),
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
                    onPressed: () {
                      Navigator.pop(context);
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


