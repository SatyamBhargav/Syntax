import 'package:flutter/material.dart';
import 'package:syntax/screen/createaccountscreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Welcome Back!',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const Text(
              'Please sign in to your account',
              style: TextStyle(color: Colors.white30),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Form(
                  child: Column(
                children: [
                  TextFormField(
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.only(left: 30, top: 40),
                          hintText: 'Username',
                          hintStyle: const TextStyle(
                              fontSize: 15, color: Colors.white30),
                          filled: true,
                          fillColor: const Color(0xff00303D),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(25)))),
                  const SizedBox(height: 10),
                  TextFormField(
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.only(left: 30, top: 40),
                          hintText: 'Password',
                          hintStyle: const TextStyle(
                              fontSize: 15, color: Colors.white30),
                          filled: true,
                          fillColor: const Color(0xff00303D),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(25)))),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.white30),
                        )),
                  ),
                  const ElevatedButton(
                      style: ButtonStyle(
                          minimumSize:
                              MaterialStatePropertyAll(Size.fromHeight(50)),
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xff5566ff))),
                      onPressed: null,
                      child: Text(
                        'Sign In',
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              )),
            ),
            const SizedBox(height: 50),
            GestureDetector(
              onTap: null,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/google.png', height: 40),
                      const SizedBox(width: 15),
                      const Text('Sign in with Google')
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't Have An Account?",
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CreateAccount()));
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.blueAccent),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
