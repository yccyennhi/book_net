import 'package:intl/intl.dart';

class TimeUtils {
  static const minute = 'm';
  static const hour = 'h';
  static const day = 'd';

  static const yyyyMMdd = 'yyyy-mm-dd';

  static String getDurationText(int timeInEpoch) {
    String text = '';
    DateTime nowEpoch = DateTime.now();
    DateTime argEpoch = DateTime.fromMillisecondsSinceEpoch(timeInEpoch);

    int durationInDay = nowEpoch.day - argEpoch.day;
    int durationInHour = nowEpoch.hour - argEpoch.hour;
    int durationInMinute = nowEpoch.minute - argEpoch.minute;

    if (durationInDay > 7) {
      DateFormat format = DateFormat(yyyyMMdd);
      text = format.format(nowEpoch);
    } else if (durationInDay > 0) {
      text = "$durationInDay$day";
    } else if (durationInHour > 0) {
      text = "$durationInHour$hour";
    } else if (durationInMinute > 0) {
      text = "$durationInMinute$hour";
    } else {
      text = 'now';
    }

    return text;
  }
}
