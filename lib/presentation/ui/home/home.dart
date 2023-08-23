import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_hive/core/themes/colors.dart';
import 'package:notes_hive/core/utiles/utiles.dart';
import 'package:notes_hive/presentation/ui/home/widgets/bottomSheet_body.dart';
import 'package:notes_hive/presentation/ui/home/widgets/custom_appbar.dart';
import 'package:notes_hive/presentation/ui/home/widgets/listview_item.dart';

import '../../../cubits/cubit/notes_cubit.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) => Scaffold(
        backgroundColor: AppColors.backG,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet<void>(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              barrierColor: Colors.transparent,
              enableDrag: true,
              showDragHandle: true,
              context: context,
              builder: (BuildContext context) {
                return BottomSheetBody();
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
              CustomAppBar(
                title: "Notes",
                color: AppColors.search_Color,
                icon: Icons.search,
              ),
              30.ph,
              const Expanded(child: ListItem()),
            ],
          ),
        )),
      ),
    );
  }
}
