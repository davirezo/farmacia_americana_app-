import 'package:flutter/material.dart';
import 'package:farmacia_app/app/app_routes.dart';

class LoginViewModel extends ChangeNotifier {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool _isRememberMe = false;
  bool _obscurePassword = true;

  bool get isRememberMe => _isRememberMe;
  bool get obscurePassword => _obscurePassword;

  void toggleRememberMe(bool? value) {
    _isRememberMe = value ?? false;
    notifyListeners();
  }

  void togglePasswordVisibility() {
    _obscurePassword = !_obscurePassword;
    notifyListeners();
  }

  Future<void> login(BuildContext context) async {
    final email = emailController.text.trim().toLowerCase();
    final password = passwordController.text;

    const corporateDomains = [
      '@farmaciaamericana.com.br',
      '@drogariaamericana.com.br',
    ];

    final isCorporateEmail = corporateDomains.any(email.endsWith);

    if (isCorporateEmail) {
      if (context.mounted) {
        Navigator.of(context).pushReplacementNamed(AppRoutes.attendantAdmin);
      }
      debugPrint("Login atendente detectado: $email");
      return;
    }

    // Fluxo padrão (cliente) - ainda como esqueleto
    debugPrint("Tentativa de login cliente - Usuário: $email | Senha: $password");
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
