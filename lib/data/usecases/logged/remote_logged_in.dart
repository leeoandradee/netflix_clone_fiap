import 'package:firebase_auth/firebase_auth.dart';
import 'package:netflix_clone_fiap/domain/usecases/logged/logged_in.dart';

class RemoteLoggedIn extends LoggedIn {
  RemoteLoggedIn({
    required this.firebaseAuth,
  });

  FirebaseAuth firebaseAuth;

  @override
  User? execute() {
    try {
      return firebaseAuth.currentUser;
    } catch (error) {
      return null;
    }
  }
}
