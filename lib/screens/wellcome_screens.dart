import 'package:flutter/material.dart';
import 'package:hiredo/screens/log_in/log_in.dart';
import 'package:hiredo/screens/log_in/sign_up.dart';

class WellcomeScreen extends StatefulWidget {
  const WellcomeScreen({super.key});

  @override
  State<WellcomeScreen> createState() => _WellcomeScreenState();
}

class _WellcomeScreenState extends State<WellcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Image.asset(
              'assets/twolady.png',
              height: size.height * 0.4,
              width: double.infinity,
            ),
            const SizedBox(
              height: 45,
            ),
            const Text(
              'Chose Your Service',
              style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Ringknock is a online on demand service.',
              style: TextStyle(fontSize: 16),
            ),
            const Text(
              'It’s has as into the 50k+ services.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 45,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF18603B),
                    fixedSize: const Size(300, 46)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignupScreen()));
                },
                child: const Text(
                  'Create Profile',
                  style: TextStyle(fontSize: 21),
                )),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have a profile? ',
                  style: TextStyle(fontSize: 17),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: const Text(
                    ' Sing in',
                    style: TextStyle(
                        color: Color(0xFF18603B),
                        fontSize: 19,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
