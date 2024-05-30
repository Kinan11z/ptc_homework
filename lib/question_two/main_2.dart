import 'package:ptc_homework/question_two/categories_lazy_loading.dart';
import 'package:ptc_homework/question_two/venues_lazy_loading.dart';

void main() {
  //categories
  CategoriesLazyLoading categoriesLazyLoading = CategoriesLazyLoading();
  List<String> categories = categoriesLazyLoading.getCategories();
  print(categories);

  //venues
  VenuesLazyLoading venuesLazyLoading = VenuesLazyLoading();
  List<String> venues = venuesLazyLoading.getvenues();
  print(venues);
}
