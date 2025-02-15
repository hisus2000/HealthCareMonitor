// lib/utils/format_utils.dart
class FormatUtils {
  static String formatTemperature(double temp) {
    return '${temp.toStringAsFixed(1)}°C';
  }

  static String formatHeartRate(double rate) {
    return '${rate.toStringAsFixed(0)} bpm';
  }

  static String formatBloodPressure(double pressure) {
    return '${pressure.toStringAsFixed(0)} mmHg';
  }
}
