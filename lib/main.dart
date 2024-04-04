import 'package:flutter/material.dart';
import 'package:test_elif/presentation/pages/auth/data_profile.dart';
import 'package:test_elif/presentation/pages/auth/new_password.dart';
import 'package:test_elif/presentation/pages/auth/reset_password.dart';
import 'package:test_elif/presentation/pages/auth/reset_password_verification.dart';
import 'package:test_elif/presentation/pages/auth/sign_in.dart';
import 'package:test_elif/presentation/pages/auth/sign_up.dart';
import 'package:test_elif/presentation/pages/auth/verification.dart';
import 'package:test_elif/presentation/pages/home/home.dart';
import 'package:test_elif/presentation/pages/main/main_page.dart';
import 'package:test_elif/presentation/theme/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.bgGrey,
        primaryColor: AppColors.main,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: AppColors.textColor),
          elevation: 0,
        ),
      ),
      home: const MainPage(),
      routes: {
        '/main_page': (context) => const MainPage(),
        '/home_page': (context) => const HomePage(),
        '/sign_up_page': (context) => const SignUpPage(),
        '/sign_in_page': (context) => const SignInPage(),
        '/verification_page': (context) => const VerificationPage(),
        '/data_profile_page': (context) => const DataProfilePage(),
        '/new_password_page': (context) => const NewPasswordPage(),
        '/reset_password_page': (context) => const ResetPasswordPage(),
        '/reset_password_verification_page': (context) =>
            const ResetPasswordVerificationPage(),
      },
    );
  }
}
