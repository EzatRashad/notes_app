import 'package:flutter/material.dart';
import 'package:notes_hive/core/themes/colors.dart';
import 'package:notes_hive/core/utiles/utiles.dart';
import 'package:notes_hive/presentation/ui/home/widgets/bottomSheet_body.dart';
import 'package:notes_hive/presentation/ui/home/widgets/custom_appbar.dart';
import 'package:notes_hive/presentation/ui/home/widgets/listview_item.dart';
import 'package:notes_hive/presentation/ui/home/widgets/note_item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backG,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet<void>(
            backgroundColor: Colors.transparent,
            barrierColor: Colors.transparent,
            enableDrag: true,
            showDragHandle: true,
            context: context,
            builder: (BuildContext context) {
              return const BottomSheetBody();
            },
          );
        },
        backgroundColor: AppColors.greenDone,
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const CustomAppBar(),
            30.ph,
            const Expanded(child: ListItem()),
          ],
        ),
      )),
    );
  }
}
