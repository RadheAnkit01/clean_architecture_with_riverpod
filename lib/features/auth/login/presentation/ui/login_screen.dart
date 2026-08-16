import 'package:clean_architecture_with_riverpod/features/auth/login/presentation/ui/widgets/login_form.dart';
import 'package:clean_architecture_with_riverpod/features/auth/login/presentation/ui/widgets/login_header.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 70),

              const LoginHeader(),

              const SizedBox(height: 45),

              const LoginForm(),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
