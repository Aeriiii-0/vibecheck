import 'package:flutter/material.dart';
import 'package:vibecheck/screen/dashboard_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff1A0B2B), Color(0xff0A2024)],
          ),
        ),

        child: Stack(
          children: [
            Positioned(
              top: 30, //or 60 kapag mobile emulator
              left: 25,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('assets/icons/b.png'),
                    SizedBox(width: 6),
                  ],
                ),
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.90,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Color(0xffF5EEEE).withOpacity(0.10),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 35),
                    Text(
                      'WELCOME BACK',
                      style: TextStyle(
                        color: Color(0xff63DDCC),
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5,
                      ),
                    ),

                    SizedBox(height: 10),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),

                        children: [
                          TextSpan(text: 'Sign in to '),
                          WidgetSpan(
                            child: ShaderMask(
                              shaderCallback: (bounds) => LinearGradient(
                                colors: [Color(0xff61E2CC), Color(0xff68A1E4)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ).createShader(bounds),
                              child: Text(
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

                    SizedBox(height: 8),
                    Text(
                      'Enter your credentials to continue your session.',
                      style: TextStyle(
                        color: Color(0xff7E8194),
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    SizedBox(height: 30),
                    Text(
                      'EMAIL ADDRESS',
                      style: TextStyle(
                        color: Color(0XFF7E8194),
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),

                    SizedBox(height: 10),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffD9D9D9).withOpacity(0.10),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0xff7E8194),
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0xff7E8194),
                            width: 2,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 20),
                    Text(
                      'PASSWORD',
                      style: TextStyle(
                        color: Color(0XFF7E8194),
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),

                    SizedBox(height: 10),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffD9D9D9).withOpacity(0.10),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0xff7E8194),
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 169, 172, 192),
                            width: 2,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 20),
                    Text(
                      'CONFIRM PASSWORD',
                      style: TextStyle(
                        color: Color(0XFF7E8194),
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),

                    SizedBox(height: 10),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffD9D9D9).withOpacity(0.10),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0xff7E8194),
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 169, 172, 192),
                            width: 2,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 10),
                    Align(
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

                    SizedBox(height: 35),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 0,
                        right: 0,
                        bottom: 10,
                      ),

                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
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
                          ),

                          child: Text(
                            'Log In',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Color(0xff7E8194),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                          children: [
                            TextSpan(text: "Don't have an account?  "),
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
                                child: Text(
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
