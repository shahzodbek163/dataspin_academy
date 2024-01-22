import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SelectableButton extends StatefulWidget {
  const SelectableButton({super.key});

  @override
  State<SelectableButton> createState() => _SelectableButtonState();
}

class _SelectableButtonState extends State<SelectableButton> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF9FAFB),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Row(
          children: [
            Flexible(
              child: InkWell(
                onTap: () {
                  isTapped = true;
                  setState(() {});
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: isTapped ? Colors.white : null,
                  ),
                  child: Text(
                    "Qabulga yozilganlar",
                    style: TextStyle(
                      color: isTapped
                          ? const Color(0xFF292930)
                          : const Color(0xFF8A90A2),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              child: InkWell(
                onTap: () {
                  isTapped = false;
                  setState(() {});
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: isTapped ? null : Colors.white,
                  ),
                  child: Text(
                    "Qabulga yozilganlar",
                    style: TextStyle(
                      color: isTapped
                          ? const Color(0xFF8A90A2)
                          : const Color(0xFF292930),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
