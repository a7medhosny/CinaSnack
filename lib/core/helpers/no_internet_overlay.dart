import 'package:flutter/material.dart';

class NoInternetOverlay {
  static OverlayEntry? _overlayEntry;

  static void show(BuildContext context) {
    if (_overlayEntry != null) return; // ما تظهرش مرتين

    _overlayEntry = OverlayEntry(
      builder:
          (context) => Positioned.fill(
            child: Material(
              color: Colors.black.withOpacity(0.8),
              child: const Center(
                child: Text(
                  'لا يوجد اتصال بالإنترنت',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
    );
    
    final navigator = Navigator.of(context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      navigator.overlay?.insert(_overlayEntry!);
    });
  }

  static void hide() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }
}
