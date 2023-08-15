import 'package:flutter/material.dart';
import 'package:hiredo/screens/log_in/sign_up.dart';

import '../home_screen/user_dashbord.dart';
import 'forget_password/forget_p_email.dart';
import 'forget_password/forget_p_phone.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/wellcome.png',
                height: size.height * 0.27,
                width: size.width * 1,
              ),
              const Text(
                'Wellcome Back',
                style: TextStyle(fontSize: 29, fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 10,
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
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.fingerprint),
                    suffixIcon: const Icon(Icons.remove_red_eye),
                    labelText: 'Password',
                    hintText: '******',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6))),
              ),
              //forget password section
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          context: context,
                          builder: (context) => Container(
                                padding: const EdgeInsets.all(30),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Make a selection!',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Text(
                                      'select one of the option given below to reset you password',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    ForgetPasswordRefactor(
                                      btnicon: Icons.email_outlined,
                                      title: 'Email',
                                      subtitle: 'Reset via E-mail Verification',
                                      onTap: () {
                                        Navigator.pop(context);
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: ((context) =>
                                                    const ForgetPasswordEmail())));
                                      },
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    ForgetPasswordRefactor(
                                      btnicon: Icons.phone,
                                      title: 'phone',
                                      subtitle: 'Reset via phone Verification',
                                      onTap: () {
                                        Navigator.pop(context);
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: ((context) =>
                                                    const ForgetPasswordPhone())));
                                      },
                                    ),
                                  ],
                                ),
                              ));
                    },
                    child: const Text(
                      'forget password?',
                      style: TextStyle(
                          color: Color(0xFF18603B),
                          fontWeight: FontWeight.w400,
                          fontSize: 18),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const UserDashbord()));
                  },
                  child: const SizedBox(
                      width: double.infinity,
                      child: Text(
                        'LOGIN',
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ))),
              const SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'OR',
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/google.png',
                            height: 25,
                          ),
                          const Text(
                            '  Sign-in with google',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ))),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account ",
                    style: TextStyle(fontSize: 20),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const SignupScreen())));
                      },
                      child: const Text(
                        'Signup',
                        style:
                            TextStyle(fontSize: 20, color: Color(0xFF18603B)),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgetPasswordRefactor extends StatelessWidget {
  const ForgetPasswordRefactor(
      {required this.btnicon,
      required this.title,
      required this.subtitle,
      required this.onTap,
      super.key});
  final IconData btnicon;
  final String title, subtitle;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.grey),
        child: Row(
          children: [
            Icon(btnicon),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Text(subtitle),
              ],
            )
          ],
        ),
      ),
    );
  }
}
