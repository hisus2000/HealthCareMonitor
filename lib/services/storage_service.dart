// lib/services/storage_service.dart
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../models/health_data.dart';

class StorageService {
  Future<void> saveHealthData(HealthData data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('healthData', jsonEncode(data.toJson()));
  }

  Future<HealthData?> loadHealthData() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getString('healthData');
    if (data != null) {
      return HealthData.fromJson(jsonDecode(data));
    }
    return null;
  }
}
