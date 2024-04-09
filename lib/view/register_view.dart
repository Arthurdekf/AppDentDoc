import 'package:flutter/cupertino.dart';

class RegisterView extends StatelessWidget {
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
              SizedBox(
                width: 200,
                height: 200,
                child: Image.asset('assets/images/registerimg.png'),
              ),
              const Text(
                'Cadastro DentDoc!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 15),
              const Text(
                'Crie já sua conta na nossa plataforma digital para ensino.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: CupertinoColors.systemGrey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 25),
              CupertinoTextField(
                placeholder: 'Nome Completo',
                keyboardType: TextInputType.emailAddress,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: CupertinoColors.lightBackgroundGray,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(height: 15),
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
              CupertinoTextField(
                placeholder: 'Confirme a senha',
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: CupertinoColors.lightBackgroundGray,
                  borderRadius: BorderRadius.circular(8),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      CupertinoCheckbox(
                        value: false,
                        onChanged: (newValue) {
                          // Coloque aqui a lógica para quando o checkbox for alterado
                        },
                        activeColor: CupertinoColors.black,
                      ),
                      const Expanded(
                        child: Text(
                          'Aceito os termos e políticas de uso.',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CupertinoCheckbox(
                        value: true,
                        onChanged: (newValue) {
                          // Coloque aqui a lógica para quando o checkbox for alterado
                        },
                        activeColor: CupertinoColors.black,
                      ),
                      const Expanded(
                        child: Text(
                          'Aceito receber novidades do DentDoc na caixa de E-mail.',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
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
