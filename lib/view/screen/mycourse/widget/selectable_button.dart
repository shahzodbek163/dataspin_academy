import 'package:flutter/material.dart';

class SelectableButton extends StatefulWidget {
  final List<String> tabTitles;
  final ValueChanged<int>? onChangeIndex;
  const SelectableButton(
      {super.key, required this.tabTitles, this.onChangeIndex});

  @override
  State<SelectableButton> createState() => _SelectableButtonState();
}

class _SelectableButtonState extends State<SelectableButton> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF7F9FF),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Row(
          children: List.generate(
            widget.tabTitles.length,
            (index) => Flexible(
              child: InkWell(
                onTap: () {
                  selectedIndex = index;
                  if (widget.onChangeIndex != null) {
                    widget.onChangeIndex!(index);
                  }
                  setState(() {});
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: selectedIndex != index ? null : Colors.white,
                  ),
                  child: Text(
                    widget.tabTitles[index],
                    style: TextStyle(
                      color: selectedIndex != index
                          ? const Color(0xFF8A90A2)
                          : const Color(0xFF292930),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
