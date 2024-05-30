import 'package:faker/faker.dart';

class VenuesLazyLoading {
  List<String>? _venuesData;

  getvenues() {
    if (_venuesData == null) {
      _venuesData == loadvenues();
    } else {
      return _venuesData;
    }
  }

  List<String> loadvenues() {
    List<String> items = [];
    for (int i = 0; i < 1000; i++) {
      items.add(faker.lorem.words(2).join(' '));
    }
    return items;
  }
}
