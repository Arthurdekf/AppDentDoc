import 'package:flutter/cupertino.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        iconSize: 26, // Define o tamanho dos ícones
        activeColor: CupertinoColors.black, // Define a cor dos ícones quando o item estiver selecionado
        inactiveColor: CupertinoColors.systemGrey, // Define a cor dos ícones quando o item não estiver selecionado
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(CupertinoIcons.book),
          ),
          BottomNavigationBarItem(
            label: 'Outro',
            icon: Icon(CupertinoIcons.person),
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (BuildContext context) {
                return CupertinoPageScaffold(
                  navigationBar: const CupertinoNavigationBar(
                    middle: Text('DentDoc'), // Título da barra superior
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildFloatingCard(context),
                        const SizedBox(height: 20),
                        _buildFloatingCard(context),
                        const SizedBox(height: 20),
                        _buildFloatingCard(context),
                      ],
                    ),
                  ),
                );
              },
            );
          case 1:
            return CupertinoTabView(
              builder: (BuildContext context) {
                return CupertinoPageScaffold(
                  navigationBar: const CupertinoNavigationBar(
                    middle: Text('Outro'), // Título da barra superior
                  ),
                  child: Center(
                    child: Container(
                      // Conteúdo da tela Outro aqui
                    ),
                  ),
                );
              },
            );
          default:
            return CupertinoTabView(
              builder: (BuildContext context) {
                return CupertinoPageScaffold(
                  navigationBar: const CupertinoNavigationBar(
                    middle: Text('DentDoc'), // Título da barra superior
                  ),
                  child: Center(
                    child: Container(
                      // Conteúdo da tela Home aqui
                    ),
                  ),
                );
              },
            );
        }
      },
    );
  }

  Widget _buildFloatingCard(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Adicione a lógica do onTap
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: CupertinoColors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: CupertinoColors.black.withOpacity(0.2),
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: const Text('Placeholder'),
      ),
    );
  }
}
