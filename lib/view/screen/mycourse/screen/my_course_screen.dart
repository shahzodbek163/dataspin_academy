import 'package:dataspin_academy/view/screen/mycourse/widget/registration_id.dart';
import 'package:dataspin_academy/view/screen/mycourse/widget/selectable_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCourseScreen extends StatelessWidget {
  static const String routeName = "/my_course_screen";

  const MyCourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const Text(
                  "Mening kurslarim",
                  style: TextStyle(
                    fontSize: 28,
                    color: Color(0xFF292930),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: SelectableButton(),
                ),
                ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const RegistrationId();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
