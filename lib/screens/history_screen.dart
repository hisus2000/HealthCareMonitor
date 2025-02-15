import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Danh sách lịch sử đo (tạm thời là dữ liệu giả)
    final List<Map<String, String>> historyData = [
      {"date": "15/02/2025", "heartRate": "80 bpm", "bloodPressure": "118/78 mmHg", "temperature": "36.6°C"},
      {"date": "14/02/2025", "heartRate": "76 bpm", "bloodPressure": "120/80 mmHg", "temperature": "36.5°C"},
      {"date": "13/02/2025", "heartRate": "82 bpm", "bloodPressure": "119/79 mmHg", "temperature": "36.7°C"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Lịch sử đo"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: historyData.length,
        itemBuilder: (context, index) {
          final item = historyData[index];
          return Card(
            elevation: 3,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              title: Text("Ngày: ${item['date']}", style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nhịp tim: ${item['heartRate']}"),
                  Text("Huyết áp: ${item['bloodPressure']}"),
                  Text("Nhiệt độ: ${item['temperature']}"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
