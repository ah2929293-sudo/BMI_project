import 'package:flutter/material.dart';

class GanderContainer extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final void Function()? onTap;

  const GanderContainer({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 180,
          width: 155,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: color,
          ),
          child: Column(
            children: [
              Icon(icon, size: 144, color: Colors.white),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
