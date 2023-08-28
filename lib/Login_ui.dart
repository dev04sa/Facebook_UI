import 'dart:async';

import 'package:flutter/material.dart';

import 'main.dart';

void main() {
  runApp(const MyApps());
}

class MyApps extends StatelessWidget {
  const MyApps({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'DEV'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Facebook",
          style: TextStyle(fontSize: 35),
        )),
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            const Text('Create an account',
                style: TextStyle(color: Colors.blueAccent)),
            const SizedBox(
              height: 30,
            ),
            Container(
                margin: EdgeInsets.only(right: 210),
                child: const Text('Username',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w500))),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle),
                  hintText: 'Enter your username',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                margin: EdgeInsets.only(right: 210),
                child: const Text('Password',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w500))),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 300,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.visibility_off),
                  prefixIcon: Icon(Icons.lock),
                  hintText: 'Enter your password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 300,
              height: 45,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                child: const Text(
                  'Log In',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                },
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: IconButton(
                    icon: Icon(
                      Icons.check_box,
                      size: 30,
                      color: Colors.indigo.shade900,
                    ),
                    onPressed: () {},
                  ),
                ),
                const Text(
                  'Keep me logged in',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Text('Forgot password?',
                style: TextStyle(color: Colors.blueAccent.shade700)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.copyright,
                  ),
                  onPressed: () {},
                ),
                Text(
                  '2001-2020 All Right Reserved',
                  style: TextStyle(color: Colors.grey.shade600),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
