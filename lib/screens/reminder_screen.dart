import 'package:flutter/material.dart';

class ReminderScreen extends StatelessWidget {
  const ReminderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cài đặt nhắc nhở")),
      body: const Center(
        child: Text("Đây là màn hình cài đặt nhắc nhở"),
      ),
    );
  }
}
