import 'package:flutter/material.dart';

class CustomItemMenu extends StatefulWidget {
  final String text;
  final IconData icon;
  final bool isActive;
  final VoidCallback onPressed;

  const CustomItemMenu(
      {Key? key,
      required this.text,
      required this.icon,
      required this.isActive,
      required this.onPressed})
      : super(key: key);

  @override
  State<CustomItemMenu> createState() => _CustomItemMenuState();
}

class _CustomItemMenuState extends State<CustomItemMenu> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      // color: isHovered
      //     ? Colors.grey.withOpacity(0.5)
      //     : widget.isActive
      //         ? Colors.grey.withOpacity(0.5)
      //         : Colors.transparent,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: widget.isActive ? null : () => widget.onPressed(),
          child: MouseRegion(
            onEnter: (_) => setState(() => isHovered = true),
            onExit: (_) => setState(() => isHovered = false),
            child: ListTile(
              leading: Icon(
                widget.icon,
              ),
              title: Text(
                widget.text,
                style: TextStyle(
                    color: widget.isActive ? Colors.grey : Colors.black),
              ),
              trailing: const Icon(Icons.arrow_right),
            ),
          ),
        ),
      ),
    );
  }
}
