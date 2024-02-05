import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme/app_colors.dart';
import '../utils/context_ext.dart';

class CopyButton extends StatefulWidget {
  const CopyButton({
    required this.text,
    super.key,
  });

  final String text;

  @override
  State<CopyButton> createState() => _CopyButtonState();
}

class _CopyButtonState extends State<CopyButton> {
  bool isCopied = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 1000),
      child: isCopied
          ? SizedBox(
              height: 40,
              child: Text(
                ' ${context.s.copied}!',
                style: const TextStyle(
                  color: AppColors.shade2,
                ),
              ),
            )
          : RepaintBoundary(
              child: IconButton(
                icon: const Icon(
                  Icons.copy,
                  color: AppColors.shade1,
                ),
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: widget.text));
                  setState(() {
                    isCopied = true;
                  });
                  Future.delayed(const Duration(seconds: 1)).whenComplete(
                    () => setState(() {
                      isCopied = false;
                    }),
                  );
                },
              ),
            ),
    );
  }
}
