import 'package:flutter/material.dart';
import 'package:vibecheck/screen/dashboard_screen.dart';
import 'package:vibecheck/screen/signup_screen.dart'; // Ensure this path is correct

class LoginOrSignupScreen extends StatelessWidget {
  const LoginOrSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff1A0B2B), Color(0xff0A2024)],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 35,
              left: 25,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('assets/icons/b.png'),
                    const SizedBox(width: 6),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.75,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: const Color(0xffF5EEEE).withOpacity(0.10),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: SingleChildScrollView(
                  // Added scroll support
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 35),
                      const Text(
                        'WELCOME BACK',
                        style: TextStyle(
                          color: Color(0xff63DDCC),
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.5,
                        ),
                      ),
                      const SizedBox(height: 10),
                      RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            const TextSpan(text: 'Sign in to '),
                            WidgetSpan(
                              child: ShaderMask(
                                shaderCallback: (bounds) =>
                                    const LinearGradient(
                                      colors: [
                                        Color(0xff61E2CC),
                                        Color(0xff68A1E4),
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ).createShader(bounds),
                                child: const Text(
                                  'VibeCheck',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Enter your credentials to continue your session.',
                        style: TextStyle(
                          color: Color(0xff7E8194),
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        'EMAIL ADDRESS',
                        style: TextStyle(
                          color: Color(0XFF7E8194),
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 10,
                          ),
                          filled: true,
                          fillColor: const Color(0xffD9D9D9).withOpacity(0.10),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color(0xff7E8194),
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color(0xff7E8194),
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'PASSWORD',
                        style: TextStyle(
                          color: Color(0XFF7E8194),
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        obscureText: true,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 10,
                          ),
                          filled: true,
                          fillColor: const Color(0xffD9D9D9).withOpacity(0.10),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color(0xff7E8194),
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 169, 172, 192),
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 13),
                      const Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Color(0xff63DDCC),
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      Container(
                        width: double.infinity,
                        height: 43,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xff4BC1B2),
                              Color(0xff5CA6BA),
                              Color(0xff7383C4),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DashboardScreen(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            'Log In',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            style: const TextStyle(
                              color: Color(0xff7E8194),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                            children: [
                              const TextSpan(text: "Don't have an account?  "),
                              WidgetSpan(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const SignupScreen(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'Sign Up',
                                    style: TextStyle(
                                      color: Color(0xff63DDCC),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
