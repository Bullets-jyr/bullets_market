import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailTextController = TextEditingController();
  TextEditingController pwdTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(48.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '블렛츠 마켓',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 42.0,
                ),
              ),
              SizedBox(
                height: 64.0,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: emailTextController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: '이메일'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '이메일 주소를 입력하세요.';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    TextFormField(
                      controller: pwdTextController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: '비밀번호'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '비밀번호를 입력하세요.';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: MaterialButton(
                  onPressed: () {},
                  height: 48.0,
                  minWidth: double.infinity,
                  color: Colors.red,
                  child: Text(
                    "로그인",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  '계정이 없나요? 회원가입'
                ),
              ),
              Divider()
            ],
          ),
        ),
      ),
    );
  }
}
