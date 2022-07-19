import 'package:flutter/material.dart';

class ManagerSection extends StatelessWidget {
  final String managerLabel;
  final Color backgroundColor;
  final VoidCallback onTap;

  const ManagerSection({
    super.key,
    required this.managerLabel,
    required this.backgroundColor,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          color: backgroundColor,
          child: Text(
            managerLabel,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
