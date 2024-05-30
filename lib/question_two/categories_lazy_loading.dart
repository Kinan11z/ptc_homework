import 'package:faker/faker.dart';

class CategoriesLazyLoading {
  List<String>? _categoriesData;

  getCategories() {
    if (_categoriesData == null) {
      _categoriesData == loadCategories();
    } else {
      return _categoriesData;
    }
  }

  List<String> loadCategories() {
    List<String> items = [];
    for (int i = 0; i < 1000; i++) {
      items.add(faker.lorem.words(3).join(' '));
    }
    return items;
  }
}
