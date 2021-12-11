import 'package:flutter_boilerplate/common/constants/config/app_config.dart';
import 'package:intl/intl.dart';

class DateUtils {
  static DateTime initialStartingDate = DateTime(2015);
  static DateTime initialEndingDate = DateTime.now();

  static DateTime? fromString(String date, {String? format}) {
    return DateTimeExtension.fromString(date, format: format);
  }

  static String toDateString(DateTime dateTime, {String format = AppConfig.dateDisplayFormat}) {
    try {
      return DateFormat(format).format(dateTime.toLocal());
    } catch (e) {
      return '';
    }
  }

  static String toDateTimeString(DateTime dateTime, {String format = AppConfig.dateTimeDisplayFormat}) {
    try {
      return DateFormat(format).format(dateTime.toLocal());
    } catch (e) {
      return '';
    }
  }

  static String toDateAPIString(DateTime dateTime, {String format = AppConfig.dateAPIFormat}) {
    try {
      return DateFormat(format).format(dateTime);
    } catch (e) {
      return '';
    }
  }

  static String toDateTimeAPIString(DateTime dateTime, {String format = AppConfig.dateTimeAPIFormat}) {
    try {
      return dateTime.toIso8601String();
    } catch (e) {
      return '';
    }
  }

  static DateTime startOfDay(DateTime dateTime) {
    return DateTime(dateTime.year, dateTime.month, dateTime.day, 0, 0, 0);
  }

  static DateTime endOfDay(DateTime dateTime) {
    return DateTime(dateTime.year, dateTime.month, dateTime.day, 23, 59, 59);
  }
}

///Method
extension DateTimeExtension on DateTime {
  static DateTime? fromString(String date, {String? format}) {
    if ((format ?? "").isNotEmpty) {
      try {
        return DateFormat(format).parse(date);
      } catch (e) {}
    }
    try {
      return DateTime.parse(date);
    } catch (e) {}
    //
    try {
      return DateFormat("yyyy/MM/dd").parse(date);
    } catch (e) {}
    return null;
  }

  String toDateString({String format = AppConfig.dateDisplayFormat}) {
    try {
      return DateFormat(format).format(this);
    } catch (e) {
      return '';
    }
  }

  String toDateTimeString({String format = AppConfig.dateTimeDisplayFormat}) {
    try {
      return DateFormat(format).format(this.toLocal());
    } catch (e) {
      return '';
    }
  }

  String toDateAPIString({String format = AppConfig.dateAPIFormat}) {
    try {
      return DateFormat(format).format(this);
    } catch (e) {
      return '';
    }
  }

  String toDateTimeAPIString({String format = AppConfig.dateTimeAPIFormat}) {
    try {
      return this.toIso8601String();
    } catch (e) {
      return '';
    }
  }

  static String getCurrentWeekDay(String date) =>
      DateFormat(DateFormat.ABBR_WEEKDAY, "en").format(DateTime.parse(date));

  static String getMonthDay(String date) =>
      DateFormat(DateFormat.DAY, "en").format(DateTime.parse(date));

  static String getYearNumber(String date) =>
      DateFormat(DateFormat.YEAR, "en").format(DateTime.parse(date));

  static String getMonthNumber(String date) =>
      DateFormat(DateFormat.NUM_MONTH, "en").format(DateTime.parse(date));

  static String getHour(String date) =>
      DateFormat(DateFormat.HOUR24, "en").format(DateTime.parse(date));

  static String getMinutes(String date) =>
      DateFormat(DateFormat.MINUTE, "en").format(DateTime.parse(date));

  static String getMonth(String date) =>
      DateFormat(DateFormat.ABBR_MONTH, "en").format(DateTime.parse(date));

  static String getFullDate(String date) =>
      DateFormat("EEE, dd MMMM yyyy").format(DateTime.parse(date));

  static String getTime(String date) =>
      DateFormat("hh:mm aa").format(DateTime.parse(date));

  static String getPreviousDateForMessages() => DateFormat("yyyy-MM-dd").format(
      DateTime.parse(DateTime.now().subtract(Duration(days: 365)).toString()));

  static String getDay(String date) =>
      DateFormat('dd').format(DateTime.parse(date));

  static String getDateForApi(String date) =>
      DateFormat("dd/MM/yyyy").format(DateTime.parse(date));

  static String getDateWithFullMonth(DateTime date) =>
      DateFormat("dd MMM yyyy").format(date);

  static String getMonthForAttendance(DateTime date) =>
      DateFormat("mm").format(date);

  static String getYearForAttendance(DateTime date) =>
      DateFormat("yyyy").format(date);

  static String getDateForRegistration(String date) =>
      DateFormat("dd/MM/yyyy").format(DateFormat("dd MMM yyyy").parse(date));

  static String formatDateTime(DateTime dateTime) {
    var formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(dateTime);
    return formattedDate;
  }

  static String formatCurrentDateTime() {
    var now = DateTime.now();
    var formattedDate = DateFormat('yyyy-MM-dd').format(now);
    return formattedDate;
  }

  static consultedTime(String dateTime) {
    DateTime dateT = DateTime.parse(dateTime);
    return "${getWeekFromNumber(dateT.weekday)} .${dateT.day} ${getMonthFromMonthNumber(dateT.month).substring(0, 3)} , ${dateT.year} ";
  }

  static String getMonthFromMonthNumber(int month) {
    switch (month) {
      case 1:
        return "January";
        break;
      case 2:
        return "February";
        break;
      case 3:
        return "March";
        break;
      case 4:
        return "April";
        break;
      case 5:
        return "May";
        break;
      case 6:
        return "June";
        break;
      case 7:
        return "July";
        break;
      case 8:
        return "August";
        break;
      case 9:
        return "September";
        break;
      case 10:
        return "October";
        break;
      case 11:
        return "November";
        break;
      case 12:
        return "December";
        break;
      default:
        return "January";
        break;
    }
  }

  static String getWeekFromNumber(int month) {
    switch (month) {
      case 1:
        return "Mon";
        break;
      case 2:
        return "Tue";
        break;
      case 3:
        return "Web";
        break;
      case 4:
        return "Thu";
        break;
      case 5:
        return "Fri";
        break;
      case 6:
        return "Sat";
        break;
      case 7:
        return "Sun";
        break;
      default:
        return "Sun";
        break;
    }
  }

  static String getTimeDifference() {
    var birthday = DateTime(1967, 10, 12);
    var date2 = DateTime.now();
    var difference = date2.difference(birthday).inHours;
    return difference.toString();
  }

}


/// date utils
class DateUtil {
  static String processDateTime(String dateStr) {
    var now = DateTime.now();
    var moonLanding = DateTime.parse(dateStr);
    var difference = now.difference(moonLanding);
    if(difference.inSeconds < 60) {
      return '${difference.inSeconds} seconds ago';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes} minutes ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} hours ago';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} days ago';
    } else if ((difference.inDays ~/ 7) < 2) {
      return '${(difference.inDays ~/ 7)} week ago';
    } else if (difference.inDays < 30) {
      return '${difference.inDays} days ago';
    } else {
      return dateStr.substring(0, 10);
    }
  }
}