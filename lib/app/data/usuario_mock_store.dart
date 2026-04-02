import 'package:flutter/foundation.dart';
import '../models/usuario_model.dart';

class UsuarioMockStore {
  static final UsuarioMockStore _instance = UsuarioMockStore._internal();
  factory UsuarioMockStore() => _instance;
  UsuarioMockStore._internal();

  final List<UsuarioModel> _usuarios = [];

  void adicionar(UsuarioModel usuario) {
    _usuarios.add(usuario);
    debugPrint("Usuário cadastrado: ${usuario.email}");
  }

  bool buscar(String email, String senha) {
    return _usuarios.any((u) => u.email == email && u.senha == senha);
  }
}