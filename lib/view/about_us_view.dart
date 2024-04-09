import 'package:flutter/cupertino.dart';

class AboutUsView extends StatelessWidget {
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
                child: Image.asset('assets/images/aboutimg.png'),
              ),
              const Text(
                'Sobre Nós!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 15),
              const Text(
                'Somos Arthur Fedeli e João Victor Thomazini fundadores da DentDoc. \n\n Nossa missão é proporcionar uma experiência única de aprendizagem e ensino na área odontológica, tornando o acesso a materiais educacionais de qualidade mais fácil e eficiente. \n\n Obrigado por se juntar a nós nesta jornada. Estamos animados para fazer parte da sua jornada educacional e esperamos que você encontre na DentDoc uma fonte valiosa de recursos e inspiração.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: CupertinoColors.systemGrey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Adicione aqui a lógica para a recuperação da senha
                    },
                    child: const Text(
                      'Enviar doação',
                      style: TextStyle(
                        color: CupertinoColors.activeBlue,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Adicione aqui a lógica para a recuperação da senha
                    },
                    child: const Text(
                      'Enviar mensagem',
                      style: TextStyle(
                        color: CupertinoColors.activeBlue,
                        fontSize: 16,
                      ),
                    ),
                  ),                    
                ],
              ),
              const SizedBox(height: 25),
              CupertinoButton(
                onPressed: () {
                  // Coloque aqui a lógica de autenticação
                },
                color: CupertinoColors.black,
                child: const Text('VOLTAR'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
