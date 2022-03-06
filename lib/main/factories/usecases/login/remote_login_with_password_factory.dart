import 'package:firebase_auth/firebase_auth.dart';
import 'package:netflix_clone_fiap/data/usecases/login/remote_login_with_email.dart';

RemoteLoginWithEmail makeRemoteLoginWithEmail() => RemoteLoginWithEmail(
      firebaseAuth: FirebaseAuth.instance,
    );
