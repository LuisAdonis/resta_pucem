import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resta_pucem/views/acercade_view.dart';
import 'package:resta_pucem/views/perfil_view.dart';
import 'package:resta_pucem/views/principal_view.dart';
import 'package:resta_pucem/views/terminosycondiciones_view.dart';
import 'package:resta_pucem/views/widgets/custom_item_menu.dart';
import 'package:resta_pucem/views/widgets/text_separator.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                "assets/favicon.png",
                width: 140,
                height: 140,
              ),
            ),
            accountName: const Text("Test"),
            accountEmail: const Text("test@correo.com"),
          ),
          Expanded(
            child: ListView(
              children: [
                // const TextSeparator(text: ' '),
                CustomItemMenu(
                  icon: Icons.home,
                  text: "Inicio",
                  isActive: false,
                  onPressed: () {
                    context.goNamed("/inicio");
                  },
                ),
                // const TextSeparator(text: ' '),
                CustomItemMenu(
                  icon: Icons.person_outline,
                  text: "Perfil",
                  isActive: false,
                  onPressed: () {
                    context.goNamed(PerfilView.routeName);
                  },
                ),
                // const TextSeparator(text: ''),
                CustomItemMenu(
                  icon: Icons.help_center_outlined,
                  text: "Acerca de.",
                  isActive: false,
                  onPressed: () {
                    context.goNamed(AcercaDeView.routeName);
                  },
                ),
                const TextSeparator(text: ' '),
                CustomItemMenu(
                  icon: Icons.policy_outlined,
                  text: "Términos y condiciones",
                  isActive: false,
                  onPressed: () {
                    context.goNamed(TerminosyCondicionesView.routeName);
                  },
                ),
                const TextSeparator(text: ' '),
              ],
            ),
          )
        ],
      ),
    );
  }
}
