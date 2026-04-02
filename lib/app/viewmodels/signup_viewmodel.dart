import 'package:flutter/material.dart';
import '../models/usuario_model.dart';
import '../data/usuario_mock_store.dart';

class SignupViewModel {
  final store = UsuarioMockStore();
  final nomeController = TextEditingController();
  final emailController = TextEditingController();
  final senhaController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool cadastrar() {
    if (formKey.currentState!.validate()) {
      final novo = UsuarioModel(
        nome: nomeController.text,
        email: emailController.text,
        senha: senhaController.text,
      );
      store.adicionar(novo);
      return true;
    }
    return false;
  }
}