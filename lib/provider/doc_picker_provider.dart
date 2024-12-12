import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class DocumentPickerProvider with ChangeNotifier {
  String? _pickedDocumentPath;

  String? get pickedDocumentPath => _pickedDocumentPath;

  Future<void> pickDocument(BuildContext context) async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf', 'doc', 'docx', 'txt'], // Allowed extensions
      );
      if (result != null && result.files.single.path != null) {
        _pickedDocumentPath = result.files.single.path;
        notifyListeners();
      } else {
        _pickedDocumentPath = null; // Reset if no file is selected
        notifyListeners();
      }
    } catch (e) {
      debugPrint("Error picking document: $e");
      _pickedDocumentPath = null; // Reset on error
      notifyListeners();
    }
  }
}
