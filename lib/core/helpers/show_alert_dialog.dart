import 'package:flutter/material.dart';

class AppDialogs {
  static final _dialogShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16),
  );
  static const _dialogPadding = EdgeInsets.all(20);

  static void showErrorDialog(BuildContext context, {required String message}) {
    showDialog(
      context: context,
      builder: (_) => Dialog(
        backgroundColor: Colors.white,
        shape: _dialogShape,
        child: Padding(
          padding: _dialogPadding,
          child: _ErrorDialogContent(message: message),
        ),
      ),
    );
  }

  static void showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      useRootNavigator: true,
      builder: (_) =>  Dialog(
        backgroundColor: Colors.white,
        shape: _dialogShape,
        child: Padding(
          padding: _dialogPadding,
          child: _LoadingDialogContent(),
        ),
      ),
    );
  }
}

class _ErrorDialogContent extends StatelessWidget {
  final String message;

  const _ErrorDialogContent({required this.message});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(Icons.error, color: Colors.red),
        const SizedBox(width: 12),
        Expanded(child: Text(message, style: const TextStyle(fontSize: 16))),
      ],
    );
  }
}

class _LoadingDialogContent extends StatelessWidget {
  const _LoadingDialogContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: const [
        CircularProgressIndicator(),
        SizedBox(height: 16),
        Text("جارٍ التحميل...", style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
