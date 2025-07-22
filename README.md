
# 📱 Micro Frontends em Flutter

Este projeto demonstra a aplicação de **Micro Apps (ou Micro Frontends)** em Flutter, utilizando **Clean Architecture**, **Flutter Modular**, **GetIt** e gerenciamento de estado com **ChangeNotifier** e **ValueNotifier** nativos do Flutter.

---

## 🚀 Objetivos do Projeto

- Separar o app em **módulos independentes e escaláveis**
- Aplicar os princípios da **Clean Architecture**
- Organizar o código com foco em **testabilidade, reutilização e manutenção**
- Simular um app real com funcionalidades de **login, cadastro, treinos, avaliação física e perfil**

---

## 🧱 Arquitetura

O projeto segue a **Clean Architecture** com as camadas:

```
lib/
├── modules/
│   ├── <feature>/
│   │   ├── data/
│   │   ├── domain/
│   │   ├── presentation/
│   │   └── <feature>_injection.dart
├── injection_container.dart
├── app_module.dart
└── main.dart
```

### 🔁 Fluxo por feature:
```
Page → Notifier → UseCase → Repository → DataSource (Mock)
```

---

## 🧩 Módulos

### 🔐 Auth Module
- `LoginPage`: autenticação simulada
- `RegisterPage`: cadastro simples
- `ResetPasswordPage`: (placeholder)
- Cada funcionalidade isolada com repositório, usecase e notifier

### 🏋️ Dashboard Module
- `TreinosPage`: exibe treinos simulados
- `AvaliacaoPage`: exibe última avaliação física
- `PerfilPage`: mostra nome do usuário
- Controlado por uma `DashboardHomePage` com `BottomNavigationBar`

---

## 💡 Tecnologias Utilizadas

| Tecnologia        | Função                                       |
|-------------------|----------------------------------------------|
| **Flutter Modular** | Gerenciamento de rotas e módulos             |
| **GetIt**         | Injeção de dependência                       |
| **ChangeNotifier** | Gerenciamento de estado nativo               |
| **ValueNotifier** | Reatividade leve sem bibliotecas externas    |
| **Mock DataSource** | Simulação de dados sem backend real         |

---

## 🧠 Padrões e Boas Práticas

- Cada módulo tem seu próprio arquivo de injeção (`*_injection.dart`)
- `injection_container.dart` centraliza e organiza os registros por módulo
- As rotas seguem o padrão modular:
  - `/auth/login`
  - `/auth/register`
  - `/dashboard`
- UI separada de lógica, respeitando **separation of concerns**

---

## 🧪 Como Rodar

```bash
flutter pub get
flutter run
```

Requisitos:
- Flutter 3.10+
- Dart SDK 3.0+
- Permitir acesso local na simulação iOS (local network permission)

---

## 📲 Navegação

- Ao iniciar o app, o usuário é direcionado para `/auth/login`
- Após login bem-sucedido: redireciona para `/dashboard`
- `DashboardHomePage` possui três abas:
  - Treinos
  - Avaliação Física
  - Perfil

---

## 📌 Diferenciais

- ✅ Arquitetura desacoplada e testável
- ✅ Baixo custo de dependência externa
- ✅ Fácil expansão de novos módulos
- ✅ Ideal para projetos grandes com múltiplos times

---

## 🧩 Próximos Passos (sugestões)

- Implementar autenticação real com Firebase ou backend
- Adicionar testes unitários para usecases e notifiers
- Adicionar Guards (proteção de rotas não autenticadas)
- Criar módulos como pacotes Dart (`packages/`) para reuso

---

## 🧑‍💻 Autor

**Hamze Jihad Abd El Baky**  
Senior Flutter Engineer | Clean Architecture | Modular | Firebase | Flutter Web | GetIt  
[LinkedIn](https://www.linkedin.com/in/hamzejihad/)
