import 'package:flutter/material.dart';
import 'package:practice_namito/core/app_manager.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: TextButton(
            onPressed: () {
              AppManager.instance.setToken(accessToken: '', refreshToken: '');
            },
            child: const Text('Logout')),
      ),
    );
  }
}
