// mixin DateHelper {
//   String formatDate(DateTime date) {
//     return "${date.day}-${date.month}, ${date.year}";
//   }
// }

mixin DateHelper {
  String formatDate(DateTime date) {
    final monthNames = [
      "Jan",
      "Feb",
      "Mar",
      "Apr",
      "May",
      "Jun",
      "Jul",
      "Aug",
      "Sep",
      "Oct",
      "Nov",
      "Dec"
    ];
    return "${date.day}-${monthNames[date.month - 1]}, ${date.year}";
  }
}
