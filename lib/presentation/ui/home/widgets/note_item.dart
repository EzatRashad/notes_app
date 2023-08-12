import 'package:flutter/material.dart';
import 'package:notes_hive/core/themes/colors.dart';
import 'package:notes_hive/core/utiles/utiles.dart';
import 'package:notes_hive/presentation/widgets/button_widget.dart';
import 'package:notes_hive/presentation/widgets/text_widget.dart';

class Item extends StatelessWidget {
  const Item({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24),
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: TextWidget(
              "Flutter Task",
              color: AppColors.black,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 14.0),
              child: TextWidget(
                "Flutter Task Flutter Flutter Task Flutter Task Flutter Task Flutter Tasks Task Flutter Task Flutter Task Flutter Task Flutter Task Flutter Task Flutter Task Flutter Task",
                color: AppColors.grey,
                fontWeight: FontWeight.w400,
                height: 2,
                maxLines: 3,
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
              "May 21,2022",
              color: AppColors.grey,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
