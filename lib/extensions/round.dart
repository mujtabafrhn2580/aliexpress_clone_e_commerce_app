//This extension rounds the number if not double then return int form String
import 'package:intl/intl.dart';

extension NumExtension on num {
  String roundProductPrice() {
    final format = NumberFormat(
        "#,##0.0", "en_US"); // Format with comma and 1 decimal place

    if (this % 1 == 0) {
      // If the number is whole, format it without decimals
      return NumberFormat("#,##0", "en_US").format(this.toInt());
    } else {
      // Otherwise, format with 1 decimal place
      return format.format(this);
    }
  }
}

extension NumberFormatter on num {
  String roundSoldProducts() {
    // Check if the number is greater than or equal to 1000
    if (this >= 1000) {
      // Use integer division to round down to the nearest thousand
      int roundedValue = (this / 1000).floor() * 1000;

      // Return formatted string with a plus sign, e.g., "1000+"
      return '${NumberFormat("#,##0", "en_US").format(roundedValue)}+';
    }

    // Return the original number if it's less than 1000
    return this.toString();
  }
}
