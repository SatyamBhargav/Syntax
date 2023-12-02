import 'package:flutter/material.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Create New Account',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontSize: 30),
            ),
            Text(
              'Please fill in the form to continue',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Colors.white30),
            ),
            SizedBox(height: 20),
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
                          hintText: 'Full Name',
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
                          hintText: 'Email Address',
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
                  const SizedBox(height: 50),
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
                  SizedBox(height: 5),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't Have An Account?",
                        style: TextStyle(color: Colors.white),
                      ),
                      TextButton(
                          onPressed: null,
                          child: Text(
                            'Sign In',
                            style: TextStyle(color: Colors.blueAccent),
                          ))
                    ],
                  )
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
