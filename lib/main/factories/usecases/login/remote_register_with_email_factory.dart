import 'package:firebase_auth/firebase_auth.dart';
import 'package:netflix_clone_fiap/data/usecases/login/remote_register_with_email.dart';

RemoteRegisterWithEmail makeRemoteRegisterWithEmail() =>
    RemoteRegisterWithEmail(
      firebaseAuth: FirebaseAuth.instance,
    );
