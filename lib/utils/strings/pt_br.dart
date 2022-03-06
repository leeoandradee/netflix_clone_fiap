import 'package:netflix_clone_fiap/utils/strings/string_resource.dart';

class PtBr implements Translation {
  @override
  String get loginFailTitle => 'Ops';
  @override
  String get loginFailDescription => 'Erro ao realizar login';
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

  @override
  String get signUpFailTitle => 'Ops';
  @override
  String get signUpFailDescription => 'Erro ao criar a conta';
  @override
  String get signUpTitle => 'Criar uma conta';
  @override
  String get signUpEmail => 'Email';
  @override
  String get signUpEmailError => 'Email inválido';
  @override
  String get signUpPassword => 'Senha';
  @override
  String get signUpPasswordError => 'Senha inválida';
  @override
  String get signUpButton => 'Entrar';
}
