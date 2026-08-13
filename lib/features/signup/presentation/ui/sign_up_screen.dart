// import 'package:clean_architecture_with_riverpod/features/signup/data/dto/request/sign_up_request.dart';
import 'package:clean_architecture_with_riverpod/core/model/country_code_model.dart';
import 'package:clean_architecture_with_riverpod/core/model/gender_model.dart';
import 'package:clean_architecture_with_riverpod/features/signup/presentation/controller/sign_up_controller.dart';
import 'package:clean_architecture_with_riverpod/features/signup/presentation/ui/widgets/sign_up_button.dart';
import 'package:clean_architecture_with_riverpod/features/signup/presentation/ui/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'widgets/login_prompt.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _acceptTerms = false;

  CountryCode? _countryCode;
  Gender? _gender;

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    if (!_acceptTerms) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please accept the terms and conditions')),
      );
      return;
    }

    if (_countryCode == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select your country')),
      );
      return;
    }

    if (_gender == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select your gender')),
      );
      return;
    }

    // Call your controller here.
    //
    // Example:
    //
    final formData = {
      'firstName': _firstNameController.text.trim(),
      'lastName': _lastNameController.text.trim().isEmpty
          ? null
          : _lastNameController.text.trim(),
      'countryCode': _countryCode,
      'phoneNumber': _phoneController.text.trim(),
      'email': _emailController.text.trim().isEmpty
          ? null
          : _emailController.text.trim(),
      'gender': _gender,
      'password': _passwordController.text,
      'acceptTerms': _acceptTerms,
    };
    print('Form Data: $formData');
    ref.read(signUpControllerProvider.notifier).setFormData(formData);
    ref.read(signUpControllerProvider.notifier).signUp();
  }

  void _listener() {
    ref.listen(signUpControllerProvider.select((state) => state.error), (
      _,
      next,
    ) {
      if (next != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            duration: const Duration(seconds: 3),
            backgroundColor: Colors.red,
            content: Text(
              "Something is wrong! Please try again later. Error: $next",
            ),
          ),
        );
      }
    });
    ref.listen(
      signUpControllerProvider.select((state) => state.isSignUpSuccess),
      (_, next) {
        if (next == true) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              duration: Duration(seconds: 3),
              backgroundColor: Colors.green,
              content: Text('Sign up successful!'),
            ),
          );
          context.go('/login');
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    _listener();
    return Scaffold(
      appBar: AppBar(title: const Text('Create Account'), centerTitle: true),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 520),
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 16),

                    const Text(
                      'Create your account',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 8),

                    Text(
                      'Sign up to get started',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                    ),

                    const SizedBox(height: 32),

                    SignupForm(
                      firstNameController: _firstNameController,
                      lastNameController: _lastNameController,
                      phoneController: _phoneController,
                      emailController: _emailController,
                      passwordController: _passwordController,

                      countryCode: _countryCode,
                      gender: _gender,

                      acceptTerms: _acceptTerms,

                      onCountryChanged: (value) {
                        setState(() {
                          _countryCode = value;
                        });
                      },

                      onGenderChanged: (value) {
                        setState(() {
                          _gender = value;
                        });
                      },

                      onTermsChanged: (value) {
                        setState(() {
                          _acceptTerms = value ?? false;
                        });
                      },
                    ),

                    const SizedBox(height: 24),

                    SignupButton(
                      onPressed: _submit,
                      isLoading: ref.watch(signUpControllerProvider).isLoading,
                    ),

                    const SizedBox(height: 24),

                    LoginPrompt(
                      onLoginPressed: () {
                        // Navigate to login.
                        //
                        // context.push('/login');
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
