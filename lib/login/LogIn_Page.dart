import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginMeState();
}

class _LoginMeState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xff21254A),
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height * 0.25,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/login.png"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Merhaba, \nHoşgeldin',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    customSizedBox(),
                    TextField(
                      decoration: customInputBorder("Kullanici Adi"),
                    ),
                    TextField(decoration: customInputBorder('Sifre')),
                    customSizedBox(),
                    Center(
                      child: sadeButton("Şifremi Unuttum"),
                    ),
                    customSizedBox(),
                    Center(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)))),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, right: 70, left: 70),
                            child: Text(
                              'Giris Yap',
                              style:
                                  Theme.of(context).primaryTextTheme.titleLarge,
                            ),
                          )),
                    ),
                    Center(child: sadeButton("Kayıt Ol"))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  TextButton sadeButton(String mood) {
    return TextButton(
      onPressed: () {},
      child: Text(
        mood,
        style: TextStyle(color: Colors.pink[200]),
      ),
    );
  }

  Widget customSizedBox() => const SizedBox(
        height: 20,
      );

  InputDecoration customInputBorder(String hintText) {
    return InputDecoration(
        hintText: hintText,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)));
  }
}
//cengizhan
