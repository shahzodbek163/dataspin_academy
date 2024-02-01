import 'package:dataspin_academy/controller/bloc/reception/reception_by_user/cubit/reception_by_user_cubit.dart';
import 'package:dataspin_academy/view/screen/mycourse/widget/registration_id.dart';
import 'package:dataspin_academy/view/screen/mycourse/widget/selectable_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyCourseScreen extends StatefulWidget {
  static const String routeName = "/my_course_screen";

  const MyCourseScreen({super.key});

  @override
  State<MyCourseScreen> createState() => _MyCourseScreenState();
}

class _MyCourseScreenState extends State<MyCourseScreen> {
  final receptionByUserCubit = ReceptionByUserCubit();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    receptionByUserCubit.getReceptionByUser();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    receptionByUserCubit.close();
  }

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
                child: BlocBuilder<ReceptionByUserCubit, ReceptionByUserState>(
                  bloc: receptionByUserCubit,
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      loaded: (response) => response.data.isEmpty
                          ? const Center(
                              child: Text("Ma'lumot mavjud emas"),
                            )
                          : ListView.builder(
                              itemCount: response.data.length,
                              shrinkWrap: true,
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (context, index) {
                                return RegistrationId(
                                  receptionByUserData: response.data[index],
                                );
                              },
                            ),
                    );
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
