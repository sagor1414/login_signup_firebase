import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'otp_screen.dart';

class ForgetPasswordEmail extends StatefulWidget {
  const ForgetPasswordEmail({super.key});

  @override
  State<ForgetPasswordEmail> createState() => _ForgetPasswordEmailState();
}

class _ForgetPasswordEmailState extends State<ForgetPasswordEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, bottom: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/forget.png',
              height: 200,
              width: 200,
            ),
            const Text(
              'Forget Password',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('Enter your email address'),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email),
                  labelText: 'Email',
                  hintText: 'abcd@gmail.com',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6))),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => const OtpScreen());
                },
                child: const SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Next',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ))),
          ],
        ),
      ),
    );
  }
}
