import 'package:clean_architecture_with_riverpod/core/data/remote/network_service.dart';
import 'package:clean_architecture_with_riverpod/core/data/remote/token/token_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    ref
        .watch(tokenServiceProvider(ref.watch(networkServiceProvider)))
        .getAccessToken()
        .then((value) {
          debugPrint("Access Token: $value");
        });
    return Scaffold(body: Center(child: const Text('Home Screen')));
  }
}
