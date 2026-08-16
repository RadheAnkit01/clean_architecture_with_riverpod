import 'package:flutter/material.dart';

class LoginPrompt extends StatelessWidget {
  const LoginPrompt({super.key, required this.onLoginPressed});

  final VoidCallback onLoginPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account?',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),

        TextButton(onPressed: onLoginPressed, child: const Text('Login')),
      ],
    );
  }
}
