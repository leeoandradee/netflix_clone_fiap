import 'package:firebase_auth/firebase_auth.dart';
import 'package:netflix_clone_fiap/data/usecases/logged/remote_logged_in.dart';

RemoteLoggedIn makeRemoteLoggedIn() => RemoteLoggedIn(
      firebaseAuth: FirebaseAuth.instance,
    );
