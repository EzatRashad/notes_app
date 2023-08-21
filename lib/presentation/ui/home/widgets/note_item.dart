import 'package:flutter/material.dart';
import 'package:notes_hive/core/themes/colors.dart';
import 'package:notes_hive/core/utiles/utiles.dart';
import 'package:notes_hive/models/note_model.dart';
import 'package:notes_hive/presentation/ui/Edit_note/edit_note.dart';
import 'package:notes_hive/presentation/widgets/button_widget.dart';
import 'package:notes_hive/presentation/widgets/text_widget.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EditNote(),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 24),
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: TextWidget(
                note.title,
                color: AppColors.black,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 14.0),
                child: TextWidget(
                  note.subtitle,
                  color: AppColors.grey,
                  fontWeight: FontWeight.w400,
                  height: 2,
                  maxLines: 2,
                ),
              ),
              trailing: ButtonWidget(
                child: Icon(
                  Icons.delete,
                  color: AppColors.red,
                  size: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: TextWidget(
                note.date,
                color: AppColors.grey,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
