import 'package:flutter/material.dart';

class CreateAccountText extends StatelessWidget {
  final VoidCallback onTap;

  const CreateAccountText({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: TextStyle(color: Colors.grey.shade600),
        ),

        TextButton(
          onPressed: onTap,
          child: const Text(
            'Create Account',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
