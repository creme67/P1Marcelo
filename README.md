# DevConnect - App de Autenticação Flutter

[![Flutter Version](https://img.shields.io/badge/Flutter-3.x-blue.svg)](https://flutter.dev)
[![Architecture](https://img.shields.io/badge/Architecture-MVVM-green.svg)](#2-arquitetura-adotada)

## 1. Descrição do Projeto
O **DevConnect** é um ecossistema simplificado de autenticação para desenvolvedores. Este projeto foi desenvolvido como requisito avaliativo para a disciplina de **Desenvolvimento de Dispositivos Móveis**.

O foco principal foi a implementação de um fluxo de navegação robusto e a aplicação do padrão **MVVM (Model-View-ViewModel)**, garantindo um código escalável e de fácil manutenção.

---

## 2. Telas do Sistema
| Splash Screen | Login | Cadastro | Home |
|-------|-------|----------|------|
| ![Splash](https://via.placeholder.com/150x300?text=Splash) | ![Login](https://via.placeholder.com/150x300?text=Login) | ![Cadastro](https://via.placeholder.com/150x300?text=Cadastro) | ![Home](https://via.placeholder.com/150x300?text=Home) |
> *Dica: Substitua os links acima pelos links das imagens na sua pasta de assets após subir o projeto.*

---

## 3. Arquitetura e Boas Práticas
O projeto foi estruturado para separar completamente a lógica de interface da lógica de negócios:

* **MVVM:** Views observam ViewModels, que por sua vez acessam o Repositório.
* **Singleton Pattern:** A classe `UsuarioMockStore` garante que os dados de cadastro persistam na memória durante toda a sessão.
* **Segurança de Contexto:** Tratamento de *Async Gaps* com verificações `if (!mounted)` em todas as navegações assíncronas.
* **Material 3:** Interface moderna utilizando a nova API de cores `withValues`.

---

## 4. Estrutura de Pastas
```text
lib/
├── app/
│   ├── data/          # Camada de Persistência (Mock Store Singleton)
│   ├── models/        # Entidades de Dados
│   ├── viewmodels/    # Lógica de Negócio e Validação
│   └── views/         # Interface do Usuário (Widgets)
└── main.dart          # Configuração Global e Rotas