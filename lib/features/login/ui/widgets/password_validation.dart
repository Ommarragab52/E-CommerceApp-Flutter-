import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/helpers/space_helper.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class PasswordValidation extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacter;
  final bool hasNumber;
  final bool hasMinLength;
  const PasswordValidation(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasSpecialCharacter,
      required this.hasNumber,
      required this.hasMinLength});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidateItem(hasLowerCase, 'At least 1 lowercase letter'),
        buildValidateItem(hasUpperCase, 'At least 1 uppercase letter'),
        buildValidateItem(hasSpecialCharacter, 'At least 1 special character'),
        buildValidateItem(hasNumber, 'At least 1 number'),
        buildValidateItem(hasMinLength, 'At least 8 characters long'),
      ],
    );
  }

  Widget buildValidateItem(bool isValidCase, String text) {
    if (isValidCase) {
      return const SizedBox.shrink();
    } else {
      return Row(
        children: [
          CircleAvatar(
            backgroundColor: isValidCase ? AppColors.grey : Colors.red.shade400,
            radius: 3,
          ),
          horizontalSpace(2),
          Text(
            text,
            style: TextStyles.font12GreyRegular.copyWith(
                color: isValidCase ? AppColors.grey : Colors.red.shade400,
                decoration: isValidCase ? TextDecoration.lineThrough : null,
                decorationColor: Colors.green,
                decorationThickness: isValidCase ? 2 : null),
          )
        ],
      );
    }
  }
}
