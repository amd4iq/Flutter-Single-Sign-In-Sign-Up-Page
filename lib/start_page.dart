import 'package:flutter/material.dart';
import 'package:playground/button.dart';
import 'package:playground/text_field.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  bool isSignin = false;
  bool isSignUp = true;
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Stack(
              children: [
                // Sgin IN
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                  child: Offstage(
                    offstage: isSignin,
                    child: Column(
                      children: [
                        const SizedBox(height: 70),
                        const Text(
                          'Sign in',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                        const SizedBox(height: 50),
                        const MyTextField(
                          hintText: 'Username',
                          obscureText: false,
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Expanded(
                              child: MyTextField(
                                hintText: 'Password',
                                obscureText: obscureText,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white38,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    obscureText = !obscureText;
                                  });
                                },
                                child: Icon(
                                  obscureText
                                      ? Icons.remove_red_eye_outlined
                                      : Icons.remove_red_eye,
                                  color: obscureText
                                      ? Colors.white
                                      : const Color.fromARGB(
                                          255, 235, 146, 146),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                // Sgin UP
                Offstage(
                  offstage: isSignUp,
                  child: Column(
                    children: [
                      const SizedBox(height: 70),
                      const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(height: 50),
                      const MyTextField(
                        hintText: 'Username',
                        obscureText: false,
                      ),
                      const SizedBox(height: 15),
                      const MyTextField(
                        hintText: 'Email',
                        obscureText: false,
                      ),
                      const SizedBox(height: 15),
                      const MyTextField(
                        hintText: 'Confirm Email',
                        obscureText: false,
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Expanded(
                            child: MyTextField(
                              hintText: 'Password',
                              obscureText: obscureText,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white38,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  obscureText = !obscureText;
                                });
                              },
                              child: Icon(
                                obscureText
                                    ? Icons.remove_red_eye_outlined
                                    : Icons.remove_red_eye,
                                color: obscureText
                                    ? Colors.white
                                    : const Color.fromARGB(255, 235, 146, 146),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(
                    children: [
                      Offstage(
                        offstage: isSignin,
                        child: Row(
                          children: [
                            MyButton(
                              text: 'Sign in',
                              onPressed: () {
                                setState(() {
                                  isSignin = false;
                                  isSignUp = true;
                                });
                              },
                              padding: 102,
                              backgroundColor: Colors.blueAccent,
                            ),
                            MyButton(
                              text: 'Sign Up',
                              onPressed: () {
                                setState(() {
                                  isSignin = true;
                                  isSignUp = false;
                                });
                              },
                              padding: 30,
                              backgroundColor: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Offstage(
                            offstage: isSignUp,
                            child: Row(
                              children: [
                                MyButton(
                                  text: 'Sign in',
                                  onPressed: () {
                                    setState(() {
                                      isSignin = false;
                                      isSignUp = true;
                                    });
                                  },
                                  padding: 30,
                                  backgroundColor: Colors.grey,
                                ),
                                MyButton(
                                  text: 'Continue Sign Up',
                                  onPressed: () {
                                    setState(() {
                                      isSignin = true;
                                      isSignUp = false;
                                    });
                                  },
                                  padding: 68,
                                  backgroundColor: Colors.blueAccent,
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                  const Text(
                    'Ahmed Alwaeli',
                    style: TextStyle(
                      color: Colors.white38,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
