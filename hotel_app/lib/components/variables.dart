import 'package:flutter/material.dart';
import 'package:hotel_app/constants/constants_export.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'booking_components/phone_manage.dart';

class Variables {
  final phoneNumber = PhoneMask(
      formatter: MaskTextInputFormatter(
        mask: AppTexts.mask,
        filter: <String, RegExp>{'#': RegExp(r'[0-9]')},
      ),
      hint: AppTexts.phoneStarNumber,
      textInputType: TextInputType.phone);
}

Variables variables = Variables();
