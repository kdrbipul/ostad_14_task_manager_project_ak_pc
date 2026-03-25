import 'package:flutter/material.dart';
import 'package:ostad_14_task_manager_project_ak_pc/widgets/screen_background.dart';

import '../utils/app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Login Screen'),
      //   centerTitle: true,
      // ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ScreenBackground(
          child: Column(
            children: [
              SizedBox(height: 150),
              Text(
                'Get Started With',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 10),
              TextFormField(decoration: InputDecoration(hintText: 'Email')),
              SizedBox(height: 10),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(hintText: 'Password'),
              ),
              SizedBox(height: 10),
              FilledButton(
                onPressed: () {},
                child: Icon(Icons.arrow_circle_right_outlined),
              ),
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
                      Text('Already have an account?'),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: AppColors.primaryColor),
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
