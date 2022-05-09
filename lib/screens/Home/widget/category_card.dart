import 'package:flutter/material.dart';
import 'package:skateboard_app/model/category_model.dart';
import 'package:skateboard_app/utilities/colors.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  final VoidCallback press;
  const CategoryCard({
    Key? key,
    required this.category,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: press,
        child: Container(
          decoration: BoxDecoration(
              color: category.active == true ? kWhiteClr : kBgClr,
              borderRadius: BorderRadius.circular(100)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              category.name,
              style: TextStyle(
                  fontSize: 16,
                  color: category.active == true ? Colors.black : kPrimaryClr),
            ),
          ),
        ),
      ),
    );
  }
}
