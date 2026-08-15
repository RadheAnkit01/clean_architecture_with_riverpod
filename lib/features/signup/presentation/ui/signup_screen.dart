// import 'package:clean_architecture_with_riverpod/core/model/country_code_model.dart';
// import 'package:clean_architecture_with_riverpod/core/model/gender_model.dart';
// import 'package:clean_architecture_with_riverpod/features/signup/data/dto/request/sign_up_request.dart';
// import 'package:clean_architecture_with_riverpod/features/signup/presentation/controller/sign_up_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:go_router/go_router.dart';

// class SignUpScreen extends ConsumerStatefulWidget {
//   const SignUpScreen({super.key, this.onSubmit});

//   final Future<void> Function(SignUpRequest request)? onSubmit;

//   @override
//   ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends ConsumerState<SignUpScreen> {
//   final _formKey = GlobalKey<FormState>();

//   final _firstNameController = TextEditingController();
//   final _lastNameController = TextEditingController();
//   final _phoneController = TextEditingController();
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();

//   CountryCode _selectedCountry = CountryCode.india;
//   Gender? _selectedGender;

//   bool _acceptTerms = false;
//   bool _obscurePassword = true;
//   bool _isLoading = false;

//   @override
//   void dispose() {
//     _firstNameController.dispose();
//     _lastNameController.dispose();
//     _phoneController.dispose();
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }

//   Future<void> _submit() async {
//     FocusScope.of(context).unfocus();

//     if (!_formKey.currentState!.validate()) {
//       return;
//     }

//     if (_selectedGender == null) {
//       _showError('Please select your gender.');
//       return;
//     }

//     if (!_acceptTerms) {
//       _showError('Please accept the terms and conditions.');
//       return;
//     }

//     setState(() {
//       _isLoading = true;
//     });

//     try {
//       final formData = {
//         'firstName': _firstNameController.text.trim(),
//         'lastName': _lastNameController.text.trim().isEmpty
//             ? null
//             : _lastNameController.text.trim(),
//         'countryCode': _selectedCountry,
//         'phoneNumber': _phoneController.text.trim(),
//         'email': _emailController.text.trim().isEmpty
//             ? null
//             : _emailController.text.trim(),
//         'gender': _selectedGender!,
//         'password': _passwordController.text,
//         'acceptTerms': _acceptTerms,
//       };
//       // print('Form Data: $formData');
//       ref.read(signUpControllerProvider.notifier).setFormData(formData);
//       await ref.read(signUpControllerProvider.notifier).signUp();
//     } finally {
//       if (mounted) {
//         setState(() {
//           _isLoading = false;
//         });
//       }
//     }
//   }

//   void _showError(String message) {
//     ScaffoldMessenger.of(
//       context,
//     ).showSnackBar(SnackBar(content: Text(message)));
//   }

//   Future<void> _selectCountry() async {
//     final selected = await showModalBottomSheet<CountryCode>(
//       context: context,
//       isScrollControlled: true,
//       showDragHandle: true,
//       builder: (context) {
//         return _CountryPicker(selectedCountry: _selectedCountry);
//       },
//     );

//     if (selected != null) {
//       setState(() {
//         _selectedCountry = selected;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);

//     return Scaffold(
//       appBar: AppBar(title: const Text('Create Account')),
//       body: SafeArea(
//         child: Form(
//           key: _formKey,
//           child: ListView(
//             padding: const EdgeInsets.fromLTRB(20, 16, 20, 32),
//             children: [
//               Text(
//                 'Create your account',
//                 style: theme.textTheme.headlineMedium?.copyWith(
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),

//               const SizedBox(height: 8),

//               Text(
//                 'Enter your details to get started.',
//                 style: theme.textTheme.bodyMedium,
//               ),

//               const SizedBox(height: 28),

//               // First name
//               TextFormField(
//                 controller: _firstNameController,
//                 textInputAction: TextInputAction.next,
//                 textCapitalization: TextCapitalization.words,
//                 decoration: const InputDecoration(
//                   labelText: 'First name',
//                   hintText: 'Enter your first name',
//                   prefixIcon: Icon(Icons.person_outline),
//                   border: OutlineInputBorder(),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.trim().isEmpty) {
//                     return 'First name is required';
//                   }

//                   if (value.trim().length < 2) {
//                     return 'First name must be at least 2 characters';
//                   }

//                   return null;
//                 },
//               ),

//               const SizedBox(height: 16),

//               // Last name
//               TextFormField(
//                 controller: _lastNameController,
//                 textInputAction: TextInputAction.next,
//                 textCapitalization: TextCapitalization.words,
//                 decoration: const InputDecoration(
//                   labelText: 'Last name',
//                   hintText: 'Enter your last name',
//                   prefixIcon: Icon(Icons.person_outline),
//                   border: OutlineInputBorder(),
//                 ),
//               ),

//               const SizedBox(height: 16),

//               // Country + Phone
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Expanded(
//                     flex: 2,
//                     child: InkWell(
//                       onTap: _selectCountry,
//                       borderRadius: BorderRadius.circular(4),
//                       child: InputDecorator(
//                         decoration: const InputDecoration(
//                           labelText: 'Country',
//                           border: OutlineInputBorder(),
//                         ),
//                         child: Row(
//                           children: [
//                             Text(
//                               _selectedCountry.flag,
//                               style: const TextStyle(fontSize: 22),
//                             ),
//                             const SizedBox(width: 8),
//                             Expanded(
//                               child: Text(
//                                 _selectedCountry.dialingCode,
//                                 style: theme.textTheme.bodyLarge,
//                               ),
//                             ),
//                             const Icon(Icons.arrow_drop_down),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),

//                   const SizedBox(width: 12),

//                   Expanded(
//                     flex: 4,
//                     child: TextFormField(
//                       controller: _phoneController,
//                       keyboardType: TextInputType.phone,
//                       textInputAction: TextInputAction.next,
//                       decoration: const InputDecoration(
//                         labelText: 'Phone number',
//                         hintText: 'Enter phone number',
//                         prefixIcon: Icon(Icons.phone_outlined),
//                         border: OutlineInputBorder(),
//                       ),
//                       validator: (value) {
//                         if (value == null || value.trim().isEmpty) {
//                           return 'Phone number is required';
//                         }

//                         if (value.trim().length < 6) {
//                           return 'Enter a valid phone number';
//                         }

//                         return null;
//                       },
//                     ),
//                   ),
//                 ],
//               ),

//               const SizedBox(height: 16),

//               // Email
//               TextFormField(
//                 controller: _emailController,
//                 keyboardType: TextInputType.emailAddress,
//                 textInputAction: TextInputAction.next,
//                 decoration: const InputDecoration(
//                   labelText: 'Email',
//                   hintText: 'Enter your email (optional)',
//                   prefixIcon: Icon(Icons.email_outlined),
//                   border: OutlineInputBorder(),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.trim().isEmpty) {
//                     return null;
//                   }

//                   final emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');

//                   if (!emailRegex.hasMatch(value.trim())) {
//                     return 'Enter a valid email address';
//                   }

//                   return null;
//                 },
//               ),

//               const SizedBox(height: 16),

//               // Gender
//               DropdownButtonFormField<Gender>(
//                 initialValue: _selectedGender,
//                 decoration: const InputDecoration(
//                   labelText: 'Gender',
//                   prefixIcon: Icon(Icons.wc_outlined),
//                   border: OutlineInputBorder(),
//                 ),
//                 items: Gender.values.map((gender) {
//                   return DropdownMenuItem<Gender>(
//                     value: gender,
//                     child: Text(gender.label),
//                   );
//                 }).toList(),
//                 onChanged: (gender) {
//                   setState(() {
//                     _selectedGender = gender;
//                   });
//                 },
//                 validator: (value) {
//                   if (value == null) {
//                     return 'Please select your gender';
//                   }

//                   return null;
//                 },
//               ),

//               const SizedBox(height: 16),

//               // Password
//               TextFormField(
//                 controller: _passwordController,
//                 obscureText: _obscurePassword,
//                 textInputAction: TextInputAction.done,
//                 onFieldSubmitted: (_) => _submit(),
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   hintText: 'Enter your password',
//                   prefixIcon: const Icon(Icons.lock_outline),
//                   suffixIcon: IconButton(
//                     onPressed: () {
//                       setState(() {
//                         _obscurePassword = !_obscurePassword;
//                       });
//                     },
//                     icon: Icon(
//                       _obscurePassword
//                           ? Icons.visibility_outlined
//                           : Icons.visibility_off_outlined,
//                     ),
//                   ),
//                   border: const OutlineInputBorder(),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Password is required';
//                   }

//                   if (value.length < 8) {
//                     return 'Password must be at least 8 characters';
//                   }

//                   return null;
//                 },
//               ),

//               const SizedBox(height: 12),

//               // Terms
//               CheckboxListTile(
//                 value: _acceptTerms,
//                 contentPadding: EdgeInsets.zero,
//                 controlAffinity: ListTileControlAffinity.leading,
//                 title: const Text('I agree to the terms and conditions'),
//                 onChanged: (value) {
//                   setState(() {
//                     _acceptTerms = value ?? false;
//                   });
//                 },
//               ),

//               const SizedBox(height: 20),

//               // Submit
//               SizedBox(
//                 height: 52,
//                 child: FilledButton(
//                   onPressed: _isLoading ? null : _submit,
//                   child: _isLoading
//                       ? const SizedBox(
//                           height: 22,
//                           width: 22,
//                           child: CircularProgressIndicator(strokeWidth: 2),
//                         )
//                       : const Text(
//                           'Create Account',
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                 ),
//               ),

//               const SizedBox(height: 20),

//               // Login
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text('Already have an account?'),
//                   TextButton(
//                     onPressed: () {
//                       // Navigate to login.
//                       context.go("/login");
//                     },
//                     child: const Text('Login'),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _CountryPicker extends StatefulWidget {
//   const _CountryPicker({required this.selectedCountry});

//   final CountryCode selectedCountry;

//   @override
//   State<_CountryPicker> createState() => _CountryPickerState();
// }

// class _CountryPickerState extends State<_CountryPicker> {
//   String _search = '';

//   @override
//   Widget build(BuildContext context) {
//     final countries = CountryCode.values.where((country) {
//       final query = _search.toLowerCase();

//       return country.countryName.toLowerCase().contains(query) ||
//           country.dialingCode.contains(query) ||
//           country.isoCode.toLowerCase().contains(query);
//     }).toList();

//     return SafeArea(
//       child: Padding(
//         padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             const Text(
//               'Select Country',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),

//             const SizedBox(height: 16),

//             TextField(
//               autofocus: true,
//               decoration: const InputDecoration(
//                 hintText: 'Search country',
//                 prefixIcon: Icon(Icons.search),
//                 border: OutlineInputBorder(),
//               ),
//               onChanged: (value) {
//                 setState(() {
//                   _search = value;
//                 });
//               },
//             ),

//             const SizedBox(height: 12),

//             Flexible(
//               child: ListView.builder(
//                 shrinkWrap: true,
//                 itemCount: countries.length,
//                 itemBuilder: (context, index) {
//                   final country = countries[index];
//                   final isSelected = country == widget.selectedCountry;

//                   return ListTile(
//                     leading: Text(
//                       country.flag,
//                       style: const TextStyle(fontSize: 26),
//                     ),
//                     title: Text(country.countryName),
//                     subtitle: Text(country.isoCode),
//                     trailing: Text(
//                       country.dialingCode,
//                       style: const TextStyle(fontWeight: FontWeight.w600),
//                     ),
//                     selected: isSelected,
//                     onTap: () {
//                       Navigator.of(context).pop(country);
//                     },
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
