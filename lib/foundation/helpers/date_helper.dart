import 'package:intl/intl.dart';

String formatPublishedDate(DateTime publishedAt) {
  return DateFormat.yMMMMd('en_US').format(publishedAt);
}
