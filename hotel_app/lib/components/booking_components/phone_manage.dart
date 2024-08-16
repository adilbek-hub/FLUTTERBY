import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotel_app/constants/constants_export.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PhoneManage extends StatefulWidget {
  const PhoneManage({Key? key}) : super(key: key);

  @override
  PhoneManageState createState() => PhoneManageState();
}

class PhoneMask {
  final TextEditingController textController = TextEditingController();
  final MaskTextInputFormatter formatter;
  final FormFieldValidator<String>? validator;
  final String hint;
  final TextInputType textInputType;

  PhoneMask(
      {required this.formatter,
      this.validator,
      required this.hint,
      required this.textInputType});
}

class PhoneManageState extends State<PhoneManage> {
  final List<PhoneMask> examples = [
    PhoneMask(
        formatter: MaskTextInputFormatter(mask: AppTexts.mask),
        hint: AppTexts.hint,
        textInputType: TextInputType.phone),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SafeArea(
            child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          itemBuilder: (context, index) =>
              buildTextField(index, examples[index]),
          itemCount: examples.length,
          //children: examples.map(buildTextField).toList()
        )));
  }

  Widget buildTextField(int index, PhoneMask example) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Stack(
        children: [
          TextFormField(
              key: ValueKey("Mask$index"),
              controller: example.textController,
              inputFormatters: [
                const UpperCaseTextFormatter(),
                example.formatter
              ],
              autocorrect: false,
              keyboardType: example.textInputType,
              autovalidateMode: AutovalidateMode.always,
              validator: example.validator,
              decoration: InputDecoration(
                  hintText: example.hint,
                  hintStyle: const TextStyle(color: AppColors.grey),
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)),
                  errorBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  border: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  errorMaxLines: 1)),
          Positioned(
            right: 0,
            top: 0,
            child: SizedBox(
                width: 48,
                height: 48,
                child: Material(
                  type: MaterialType.transparency,
                  child: InkWell(
                      borderRadius: const BorderRadius.all(Radius.circular(24)),
                      child:
                          const Icon(Icons.clear, color: Colors.grey, size: 24),
                      onTap: () => example.textController.clear()),
                )),
          )
        ],
      ),
    );
  }
}

class UpperCaseTextFormatter implements TextInputFormatter {
  const UpperCaseTextFormatter();

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
        text: newValue.text.toUpperCase(), selection: newValue.selection);
  }
}
