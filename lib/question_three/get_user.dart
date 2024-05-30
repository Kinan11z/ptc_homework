import 'package:faker/faker.dart';
import 'package:ptc_homework/question_three/user_model.dart';

getUserById(int? id) {
  if (id == null || id < 0) return null;
  Map<String, dynamic> user = {};
  user = {
    "id": id,
    "first_name": faker.person.firstName(),
    "last_name": faker.person.lastName(),
    "about": faker.lorem.words(3).join(' '),
    "image": faker.image.image(),
  };

  return UserModel.fromJson(user);
}
