import 'package:flutter/cupertino.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(
              horizontal: 20, vertical: 10), // Margem ao redor do Container
          padding:
              const EdgeInsets.all(16), // Preenchimento interno do Container
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
            children: [
              const SizedBox(height: 10),
              SizedBox(
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
                  color: CupertinoColors.systemGrey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Adicione Logica
                    },
                    child: const Text(
                      'Sobre Nós',
                      style: TextStyle(
                        color: CupertinoColors.activeBlue,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              
              ),
              const SizedBox(height: 25),
              CupertinoTextField(
                placeholder: 'E-mail',
                keyboardType: TextInputType.emailAddress,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: CupertinoColors.lightBackgroundGray,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(height: 15),
              CupertinoTextField(
                placeholder: 'Senha',
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: CupertinoColors.lightBackgroundGray,
                  borderRadius: BorderRadius.circular(8),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 15),
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
                    color: CupertinoColors.activeBlue,
                    child: const Text('LOGIN'),
                  ),                
                ],
              ),
              const SizedBox(height: 25),
              CupertinoButton(
                onPressed: () {
                  // Coloque aqui a lógica de autenticação
                },
                color: CupertinoColors.black,
                child: const Text('CADASTRO'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
