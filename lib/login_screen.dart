import 'package:flutter/material.dart';
import 'package:netflix_clone_fiap/presentation/login/login_presenter.dart';

class LoginScreen extends StatelessWidget {
  static const String id = '/login_screen';

  const LoginScreen({Key? key, required this.presenter}) : super(key: key);

  final LoginPresenter presenter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/logo.png', width: 120),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Padding(
                                padding: EdgeInsets.only(top: 10, bottom: 20),
                                child: Text(
                                  'Entrar',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                )),
                          ]),
                      Form(
                          child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 5),
                          child: TextFormField(
                            autofillHints: const [AutofillHints.email],
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              contentPadding:
                                  const EdgeInsets.fromLTRB(32, 4, 32, 4),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide:
                                    const BorderSide(color: Color(0xffced0d4)),
                              ),
                              errorStyle:
                                  const TextStyle(color: Color(0xffCF6679)),
                              fillColor: const Color(0xff262626),
                              filled: true,
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xff65676B), width: 1.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xffCF6679)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              hintText: 'Email',
                              hintStyle:
                                  const TextStyle(color: Color(0xff65676B)),
                            ),
                            enableSuggestions: true,
                            keyboardType: TextInputType.emailAddress,
                            style: const TextStyle(color: Colors.white),
                            textInputAction: TextInputAction.next,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 5),
                          child: TextFormField(
                            autofillHints: const [AutofillHints.email],
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              contentPadding:
                                  const EdgeInsets.fromLTRB(32, 4, 32, 4),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide:
                                    const BorderSide(color: Color(0xffced0d4)),
                              ),
                              errorStyle:
                                  const TextStyle(color: Color(0xffCF6679)),
                              fillColor: const Color(0xff262626),
                              filled: true,
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xff65676B), width: 1.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xffCF6679)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              hintText: 'Senha',
                              hintStyle:
                                  const TextStyle(color: Color(0xff65676B)),
                            ),
                            enableSuggestions: true,
                            keyboardType: TextInputType.text,
                            style: const TextStyle(color: Colors.white),
                            textInputAction: TextInputAction.go,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30, bottom: 5),
                          child: Center(
                            child: SizedBox(
                              width: double.infinity,
                              height: 40,
                              child: ElevatedButton(
                                onPressed: (() => print("oi")),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                      return Color(0xffe50914);
                                    },
                                  ),
                                  elevation:
                                      MaterialStateProperty.resolveWith<double>(
                                    (Set<MaterialState> states) {
                                      return 3;
                                    },
                                  ),
                                  shape: MaterialStateProperty.resolveWith<
                                      RoundedRectangleBorder>(
                                    (Set<MaterialState> states) {
                                      return RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5));
                                    },
                                  ),
                                ),
                                child: const Text(
                                  'Entrar',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ])),
                      Padding(
                          padding: const EdgeInsets.only(top: 30, bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                'Novo no Netflix?',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: GestureDetector(
                                  child: const Text(
                                    'Criar conta',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ])))));
  }
}
