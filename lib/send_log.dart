import 'package:flutter/material.dart';
import 'package:send_log/core/routes/app_router.dart';
import 'package:send_log/core/routes/app_routes.dart';

class SendLog extends StatelessWidget {
  const SendLog({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Send Log',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: AppRoutes.loginScreen,
      onGenerateRoute: AppRouter.onGenerateRoutes,
    );
  }
}
