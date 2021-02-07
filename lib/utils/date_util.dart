import 'package:intl/intl.dart';

class DateUtil {
  static DateTime convertIsoDate(String iosDate) {
    return DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").parse(iosDate);
  }

  static String convertIsoDateToBirthdayFormat(String iosDate) {
    final tempDate = DateUtil.convertIsoDate(iosDate);
    return DateFormat.yMMMMEEEEd().format(tempDate);
  }
}