import 'package:injectable/injectable.dart';
import 'package:pickome/domain/core/value_objects.dart';
import 'package:pickome/domain/model/user.dart';

@LazySingleton()
class CognitoUserMapper {
  static User toDomain(User _) {
    return _ == null
        ? null
        : User(
            id: _.id,
            username: _.username,
          );
  }
}
