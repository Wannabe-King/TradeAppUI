import 'package:flutter/material.dart';
import 'package:stockportfoliodashboard/utils/constants/colors.dart';

class TopMenuOptions extends StatelessWidget {
  final IconData icon;
  final String lable;
  final bool selected;
  final Function()? onClick;

  const TopMenuOptions({
    super.key,
    required this.icon,
    required this.lable,
    required this.selected,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: 40,
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(2),
        decoration:
            selected
                ? BoxDecoration(
                  border: Border.all(color: ColorX.borderColor, width: 2),
                  borderRadius: BorderRadius.circular(15),
                  color: ColorX.hueColor,
                )
                : null,
        child: Row(
          children: [
            Icon(icon),
            Text(
              lable,
              style: TextStyle(
                color:
                    selected
                        ? ColorX.primaryTextColor
                        : ColorX.secondaryTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
