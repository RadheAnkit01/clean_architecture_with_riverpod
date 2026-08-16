import 'package:clean_architecture_with_riverpod/features/auth/login/presentation/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'create_account_text.dart';
import 'login_button.dart';
import 'password_field.dart';
import 'phone_number_field.dart';

class LoginForm extends ConsumerStatefulWidget {
  const LoginForm({super.key});

  @override
  ConsumerState<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends ConsumerState<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _phoneController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  void _login() {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    final phoneNumber = _phoneController.text.trim();
    final password = _passwordController.text;

    debugPrint('Phone: $phoneNumber');
    debugPrint('Password: $password');

    // Call your LoginController here.
    final loginFormData = {
      "fullPhoneNumber": "+91$phoneNumber",
      "password": password,
    };
    ref.read(loginControllerProvider.notifier).setFormData(loginFormData);
    ref.read(loginControllerProvider.notifier).login();
  }

  void _createAccount() {
    context.go('/signup');
  }

  void _listener() {
    ref.listen(loginControllerProvider.select((state) => state.error), (
      _,
      next,
    ) {
      if (next != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            duration: const Duration(seconds: 3),
            backgroundColor: Colors.red,
            content: Text("Error: $next"),
          ),
        );
      }
    });
    ref.listen(
      loginControllerProvider.select((state) => state.isLoginSuccess),
      (_, next) {
        if (next == true) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              duration: Duration(seconds: 3),
              backgroundColor: Colors.green,
              content: Text('Login successful!'),
            ),
          );
          context.go('/home');
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    _listener();
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          PhoneNumberField(controller: _phoneController),

          const SizedBox(height: 18),

          PasswordField(controller: _passwordController),

          const SizedBox(height: 12),

          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                // TODO: Forgot password
              },
              child: const Text('Forgot Password?'),
            ),
          ),

          const SizedBox(height: 18),

          LoginButton(onPressed: _login),

          const SizedBox(height: 28),

          CreateAccountText(onTap: _createAccount),
        ],
      ),
    );
  }
}
