import 'package:day2/telegram.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Image.asset(
              'assets/img/images.png',
              width: 100,
              height: 100,
            )),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Selamat Datang\nSilahkan Mendaftar',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Username',
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 1, color: Colors.black),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            const Text(
              'Email',
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 1, color: Colors.black),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            const Text(
              'Password',
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 1, color: Colors.black),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(children: [
                      TextSpan(text: 'Sudah punya akun? '),
                      TextSpan(
                        text: 'Login',
                        style: TextStyle(
                            color: Colors.orange,
                            decoration: TextDecoration.underline),
                      )
                    ]),
                  ),
                  Text(
                    'Lupa password?',
                    style: TextStyle(
                        color: Colors.orange,
                        decoration: TextDecoration.underline),
                  )
                ],
              ),
            ),
            const SizedBox(height: 50),
            Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: const Color(0xFF1A3665),
                    borderRadius: BorderRadius.circular(25)),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/first');
                  },
                  child: const Text(
                    'Daftar',
                    style: TextStyle(color: Colors.white),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
