import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegistrationId extends StatelessWidget {
  const RegistrationId({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 1,
          color: const Color(0xFFEBEBF9),
        ),
      ),
      child: Column(
        children: [
          const Row(
            children: [
              Text(
                "Registratsiya raqami",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              Text(
                "122234568392012024",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF8A90A2),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              width: double.infinity,
              height: 1,
              color: const Color(0xFFEBEBF9),
            ),
          ),
          const Row(
            children: [
              Text(
                "O’quvchi",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              Text(
                "Davronbek Yusupov Hamodovich",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF5956E9),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Row(
            children: [
              Text(
                "Registratsiya sanasi",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              Text(
                "23.02.2024 12:34",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF5956E9),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Row(
            children: [
              Text(
                "Kusr nomi",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              Text(
                "Kurs turi",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF5956E9),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Row(
            children: [
              Text(
                "Kurs kim uchun",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              Text(
                "Backend",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF5956E9),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Row(
            children: [
              Text(
                "Mentor",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              Text(
                "O’quvchilar uchun",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF5956E9),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Row(
            children: [
              Text(
                "O’quvchi",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              Text(
                "Davronbek Yusupov Hamodovich",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF5956E9),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                width: 1,
                color: const Color(0xFF5956E9),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/Call.svg"),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  child: Text(
                    "Qayta aloqaga chiqish",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF5956E9),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
