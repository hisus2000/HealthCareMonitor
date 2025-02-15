import 'package:flutter/material.dart';
import 'history_screen.dart';
import 'reminder_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Healthcare Monitor"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),

            // Thẻ theo dõi Nhịp tim
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: const Icon(Icons.favorite, color: Colors.red),
                title: const Text("Nhịp tim", style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: const Text("78 bpm"),
              ),
            ),

            const SizedBox(height: 10),

            // Thẻ theo dõi Huyết áp
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: const Icon(Icons.monitor_heart, color: Colors.orange),
                title: const Text("Huyết áp", style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: const Text("120/80 mmHg"),
              ),
            ),

            const SizedBox(height: 10),

            // Thẻ theo dõi Nhiệt độ cơ thể
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: const Icon(Icons.thermostat, color: Colors.green),
                title: const Text("Nhiệt độ", style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: const Text("36.5°C"),
              ),
            ),

            const SizedBox(height: 20),

            // Nút Xem lịch sử đo
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HistoryScreen()),
                  );
                },
                child: const Text("Xem lịch sử đo"),
              ),
            ),

            const SizedBox(height: 10),

            // Nút Cài đặt nhắc nhở
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ReminderScreen()),
                  );
                },
                child: const Text("Cài đặt nhắc nhở"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
