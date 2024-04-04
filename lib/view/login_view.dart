// ignore_for_file: sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Margem ao redor do Container
          padding: const EdgeInsets.all(16), // Preenchimento interno do Container
          decoration: BoxDecoration(
            color: CupertinoColors.white,
            borderRadius: BorderRadius.circular(10), // Borda arredondada
            boxShadow: [
              BoxShadow(
                color: CupertinoColors.black.withOpacity(0.2), // Sombra leve
                blurRadius: 5,
                spreadRadius: 1,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
              const SizedBox(height: 10),
              Container(
                width: 200,
                height: 200,
                child: Image.asset('assets/images/loginimg.png'),
              ),
              const Text(
                'Bem Vindo(a) ao DentDoc!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 15),
              const Text(
                'Sua plataforma digital para ensino.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey, 
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              CupertinoTextField(
                placeholder: 'E-mail',
                keyboardType: TextInputType.emailAddress,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: CupertinoColors.lightBackgroundGray,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(height: 20),
              CupertinoTextField(
                placeholder: 'Senha',
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                color: CupertinoColors.lightBackgroundGray,
                borderRadius: BorderRadius.circular(8),
                ),
                obscureText: _obscurePassword, // Define a visibilidade da senha
                suffix: GestureDetector(
                  onTap: () {
                  // Alterna a visibilidade da senha quando o ícone do olho é pressionado                  
                    _obscurePassword = !_obscurePassword;
                  },
                  child: Icon(
                  _obscurePassword ? CupertinoIcons.eye_slash : CupertinoIcons.eye,
                  color: CupertinoColors.systemGrey,
                    ),
                  ),
                ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Adicione aqui a lógica para a recuperação da senha
                    },
                    child: const Text(
                      'Esqueci minha senha?',
                      style: TextStyle(
                        color: CupertinoColors.activeBlue,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  CupertinoButton(
                    onPressed: () {
                      // Coloque aqui a lógica de autenticação
                    },
                    child: const Text('Login'),
                    color: CupertinoColors.activeBlue,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              CupertinoButton(
                    onPressed: () {
                      // Coloque aqui a lógica de autenticação
                    },
                    child: const Text('Registre-se'),
                    color: CupertinoColors.black,
                  ),
            ],
          ),
        ),
      ),
    );
  }
}