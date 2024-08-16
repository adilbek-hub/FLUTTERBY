import 'package:flutter/material.dart';
import 'package:lalafolike/core/theme/color_constants.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';

enum SingingCharacter { ram, shyam, three, four }

class RadioListTileWidget extends StatefulWidget {
  const RadioListTileWidget({super.key});

  @override
  _RadioListTileWidgetState createState() => _RadioListTileWidgetState();
}

class _RadioListTileWidgetState extends State<RadioListTileWidget> {
  SingingCharacter _character = SingingCharacter.ram;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppText(
                  title: 'По умолчанию',
                  textType: TextType.body,
                  color: Colors.black,
                ),
                Radio<SingingCharacter>(
                  activeColor: ColorConstants.green,
                  value: SingingCharacter.ram,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value!;
                    });
                  },
                ),
              ],
            ),
            const Divider(color: Colors.grey, thickness: 0.5),
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppText(
                  title: 'Сначала новые',
                  textType: TextType.body,
                  color: Colors.black,
                ),
                Radio<SingingCharacter>(
                  activeColor: ColorConstants.green,
                  value: SingingCharacter.shyam,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value!;
                    });
                  },
                ),
              ],
            ),
            const Divider(color: Colors.grey, thickness: 0.5),
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppText(
                  title: 'Сначала дешевле',
                  textType: TextType.body,
                  color: Colors.black,
                ),
                Radio<SingingCharacter>(
                  activeColor: ColorConstants.green,
                  value: SingingCharacter.three,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value!;
                    });
                  },
                ),
              ],
            ),
            const Divider(color: Colors.grey, thickness: 0.5),
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppText(
                  title: 'Сначала дороже',
                  textType: TextType.body,
                  color: Colors.black,
                ),
                Radio<SingingCharacter>(
                  activeColor: ColorConstants.green,
                  value: SingingCharacter.four,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value!;
                    });
                  },
                ),
              ],
            ),
            const Divider(color: Colors.grey, thickness: 0.5),
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppText(
                  title: 'Сначала дороже',
                  textType: TextType.body,
                  color: Colors.black,
                ),
                Radio<SingingCharacter>(
                  activeColor: ColorConstants.green,
                  value: SingingCharacter.four,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value!;
                    });
                  },
                ),
              ],
            ),
            const Divider(color: Colors.grey, thickness: 0.5),
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppText(
                  title: 'Сначала дороже',
                  textType: TextType.body,
                  color: Colors.black,
                ),
                Radio<SingingCharacter>(
                  activeColor: ColorConstants.green,
                  value: SingingCharacter.four,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value!;
                    });
                  },
                ),
              ],
            ),
            const Divider(color: Colors.grey, thickness: 0.5),
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppText(
                  title: 'Сначала дороже',
                  textType: TextType.body,
                  color: Colors.black,
                ),
                Radio<SingingCharacter>(
                  activeColor: ColorConstants.green,
                  value: SingingCharacter.four,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value!;
                    });
                  },
                ),
              ],
            ),
            const Divider(color: Colors.grey, thickness: 0.5),
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppText(
                  title: 'Сначала дороже',
                  textType: TextType.body,
                  color: Colors.black,
                ),
                Radio<SingingCharacter>(
                  activeColor: ColorConstants.green,
                  value: SingingCharacter.four,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value!;
                    });
                  },
                ),
              ],
            ),
            const Divider(color: Colors.grey, thickness: 0.5),
          ],
        ),
      ],
    );
  }
}
