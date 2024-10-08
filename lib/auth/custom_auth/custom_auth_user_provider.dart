import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class TemplateAstinaAuthUser {
  TemplateAstinaAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<TemplateAstinaAuthUser> templateAstinaAuthUserSubject =
    BehaviorSubject.seeded(TemplateAstinaAuthUser(loggedIn: false));
Stream<TemplateAstinaAuthUser> templateAstinaAuthUserStream() =>
    templateAstinaAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
