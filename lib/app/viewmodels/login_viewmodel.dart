import 'package:flutter/material.dart';
import '../data/usuario_mock_store.dart';

class LoginViewModel {
  final store = UsuarioMockStore();
  final emailController = TextEditingController();
  final senhaController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool entrar() {
    if (formKey.currentState!.validate()) {
      return store.buscar(emailController.text, senhaController.text);
    }
    return false;
  }
}