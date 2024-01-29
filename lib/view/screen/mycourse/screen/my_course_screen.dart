import 'package:dataspin_academy/view/screen/mycourse/widget/registration_id.dart';
import 'package:dataspin_academy/view/screen/mycourse/widget/selectable_button.dart';
import 'package:flutter/material.dart';

class MyCourseScreen extends StatefulWidget {
  static const String routeName = "/my_course_screen";

  const MyCourseScreen({super.key});

  @override
  State<MyCourseScreen> createState() => _MyCourseScreenState();
}

class _MyCourseScreenState extends State<MyCourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SelectableButton(
                  tabTitles: const [
                    "Qabuldagi",
                    "Aktivdagi",
                  ],
                  onChangeIndex: (value) {
                    print(value);
                  },
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const RegistrationId();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
