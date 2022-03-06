import 'package:netflix_clone_fiap/utils/strings/string_resource.dart';

class PtBr implements Translation {
  @override
  String get loginFailTitle => 'Ops';
  @override
  String get loginFailDescription => 'Ocorreu uma falha ao realizar o login';
  @override
  String get loginEmail => 'Email';
  @override
  String get loginEmailError => 'Email inválido';
  @override
  String get loginPassword => 'Senha';
  @override
  String get loginPasswordError => 'Senha inválida';
  @override
  String get loginButton => 'Entrar';
  @override
  String get loginNewUserQuestion => 'Novo no Netflix?';
  @override
  String get loginNewUserButton => 'Criar conta';
  @override
  String get loginTitle => 'Entrar';
}
