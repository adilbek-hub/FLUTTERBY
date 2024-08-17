import 'package:flutter/material.dart';
import 'package:ytp/features/presentation/app_widgets/default_text_field.dart';
import 'package:ytp/features/presentation/pages/convert_page/widgets/default_container.dart';

class ConvertCard extends StatefulWidget {
  const ConvertCard({
    super.key,
    required this.theme,
    required this.moneys,
  });

  final ThemeData theme;
  final List<String> moneys;

  @override
  State<ConvertCard> createState() => _ConvertCardState();
}

class _ConvertCardState extends State<ConvertCard> {
  int? selectedContainerIndex;
  late TextEditingController currencyController;
  @override
  void initState() {
    super.initState();
    currencyController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    currencyController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      backgroundColor: widget.theme.colorScheme.primaryContainer,
      height: 220,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          DefaultTextField(
            backgroundColor: widget.theme.colorScheme.surface,
            style: widget.theme.textTheme.titleSmall,
            hintText: 'Currency',
            hintStyle: widget.theme.textTheme.displayLarge,
            controller: currencyController,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              widget.moneys.length,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedContainerIndex = index;
                    currencyController.text = widget.moneys[index];
                  });
                },
                child: DefaultContainer(
                  padding: const EdgeInsets.all(14),
                  width: 66.67,
                  height: 45,
                  backgroundColor: selectedContainerIndex == index
                      ? widget.theme.colorScheme.tertiary
                      : widget.theme.colorScheme.surface,
                  child: Text(widget.moneys[index],
                      style: selectedContainerIndex == index
                          ? widget.theme.textTheme.bodySmall
                          : widget.theme.textTheme.displayMedium),
                ),
              ),
            ),
          ),
          DefaultTextField(
            backgroundColor: widget.theme.colorScheme.surface,
            style: widget.theme.textTheme.titleSmall,
            hintText: 'Amount',
            hintStyle: widget.theme.textTheme.displayLarge,
            keyboardType: TextInputType.number,
          ),
        ],
      ),
    );
  }
}
