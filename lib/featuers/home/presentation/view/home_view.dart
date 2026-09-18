import 'package:flutter/material.dart';
import 'package:send_log/core/di/service_locator.dart';
import 'package:send_log/core/routes/app_routes.dart';
import 'package:send_log/featuers/login/data/repos/auth_repo.dart';

/// Placeholder home screen — just enough to prove login worked.
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final email = getIt<AuthRepo>().currentUser?.email ?? 'user';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await getIt<AuthRepo>().logout();
              if (context.mounted) {
                Navigator.pushReplacementNamed(context, AppRoutes.loginScreen);
              }
            },
          ),
        ],
      ),
      body: Center(child: Text('Logged in as $email')),
    );
  }
}
