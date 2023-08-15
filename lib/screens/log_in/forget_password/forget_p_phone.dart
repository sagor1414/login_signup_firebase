import 'package:flutter/material.dart';

class ForgetPasswordPhone extends StatefulWidget {
  const ForgetPasswordPhone({super.key});

  @override
  State<ForgetPasswordPhone> createState() => _ForgetPasswordPhoneState();
}

class _ForgetPasswordPhoneState extends State<ForgetPasswordPhone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 80, left: 30, right: 30),
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
            const Text('Enter your Phone number'),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.phone),
                  labelText: 'Phone',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6))),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {},
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
