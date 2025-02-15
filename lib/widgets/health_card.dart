// lib/widgets/health_card.dart
import 'package:flutter/material.dart';
import '../models/health_data.dart';
import '../utils/format_utils.dart';

class HealthCard extends StatelessWidget {
  final HealthData healthData;

  HealthCard({required this.healthData});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text("Nhịp tim: ${FormatUtils.formatHeartRate(healthData.heartRate)}"),
            Text("Huyết áp: ${FormatUtils.formatBloodPressure(healthData.bloodPressure)}"),
            Text("Nhiệt độ: ${FormatUtils.formatTemperature(healthData.temperature)}"),
          ],
        ),
      ),
    );
  }
}
