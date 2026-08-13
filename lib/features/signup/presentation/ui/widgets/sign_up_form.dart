import 'package:flutter/material.dart';

import 'package:clean_architecture_with_riverpod/core/model/country_code_model.dart';
import 'package:clean_architecture_with_riverpod/core/model/gender_model.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
    required this.firstNameController,
    required this.lastNameController,
    required this.phoneController,
    required this.emailController,
    required this.passwordController,
    required this.countryCode,
    required this.gender,
    required this.acceptTerms,
    required this.onCountryChanged,
    required this.onGenderChanged,
    required this.onTermsChanged,
  });

  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController phoneController;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  final CountryCode? countryCode;
  final Gender? gender;

  final bool acceptTerms;

  final ValueChanged<CountryCode?> onCountryChanged;
  final ValueChanged<Gender?> onGenderChanged;
  final ValueChanged<bool?> onTermsChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextFormField(
          controller: firstNameController,
          textInputAction: TextInputAction.next,
          decoration: const InputDecoration(
            labelText: 'First name',
            hintText: 'Enter your first name',
            prefixIcon: Icon(Icons.person_outline),
            border: OutlineInputBorder(),
          ),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return 'First name is required';
            }

            return null;
          },
        ),

        const SizedBox(height: 16),

        TextFormField(
          controller: lastNameController,
          textInputAction: TextInputAction.next,
          decoration: const InputDecoration(
            labelText: 'Last name',
            hintText: 'Enter your last name',
            prefixIcon: Icon(Icons.person_outline),
            border: OutlineInputBorder(),
          ),
        ),

        const SizedBox(height: 16),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: DropdownButtonFormField<CountryCode>(
                isExpanded: true,
                initialValue: countryCode,
                decoration: const InputDecoration(
                  labelText: 'Country',
                  prefixIcon: Icon(Icons.public),
                  border: OutlineInputBorder(),
                ),
                items: CountryCode.values.map((country) {
                  return DropdownMenuItem(
                    value: country,
                    child: Text(country.name),
                  );
                }).toList(),
                onChanged: onCountryChanged,
              ),
            ),

            const SizedBox(width: 12),

            Expanded(
              flex: 3,
              child: TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  labelText: 'Phone number',
                  hintText: '9090909090',
                  prefixIcon: Icon(Icons.phone_outlined),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Phone number is required';
                  }

                  if (!RegExp(r'^[0-9]{10}$').hasMatch(value.trim())) {
                    return 'Enter a valid phone number';
                  }

                  return null;
                },
              ),
            ),
          ],
        ),

        const SizedBox(height: 16),

        TextFormField(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          decoration: const InputDecoration(
            labelText: 'Email',
            hintText: 'example@email.com',
            prefixIcon: Icon(Icons.email_outlined),
            border: OutlineInputBorder(),
          ),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return null;
            }

            final emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');

            if (!emailRegex.hasMatch(value.trim())) {
              return 'Enter a valid email';
            }

            return null;
          },
        ),

        const SizedBox(height: 16),

        DropdownButtonFormField<Gender>(
          initialValue: gender,
          decoration: const InputDecoration(
            labelText: 'Gender',
            prefixIcon: Icon(Icons.wc_outlined),
            border: OutlineInputBorder(),
          ),
          items: Gender.values.map((gender) {
            return DropdownMenuItem(value: gender, child: Text(gender.name));
          }).toList(),
          onChanged: onGenderChanged,
        ),

        const SizedBox(height: 16),

        TextFormField(
          controller: passwordController,
          obscureText: true,
          textInputAction: TextInputAction.done,
          decoration: const InputDecoration(
            labelText: 'Password',
            hintText: 'Enter a strong password',
            prefixIcon: Icon(Icons.lock_outline),
            border: OutlineInputBorder(),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Password is required';
            }

            if (value.length < 8) {
              return 'Password must be at least 8 characters';
            }

            if (!RegExp(r'[A-Z]').hasMatch(value)) {
              return 'Password must contain an uppercase letter';
            }

            if (!RegExp(r'[0-9]').hasMatch(value)) {
              return 'Password must contain a number';
            }

            if (!RegExp(r'[^A-Za-z0-9]').hasMatch(value)) {
              return 'Password must contain a special character';
            }

            return null;
          },
        ),

        const SizedBox(height: 8),

        CheckboxListTile(
          value: acceptTerms,
          onChanged: onTermsChanged,
          contentPadding: EdgeInsets.zero,
          controlAffinity: ListTileControlAffinity.leading,
          title: const Text('I accept the Terms and Conditions'),
        ),
      ],
    );
  }
}
