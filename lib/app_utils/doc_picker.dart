import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class DocumentPickerBottomSheet {
  /// Show a bottom sheet for document upload options
  static Future<void> showDocumentUploadBottomSheet(
      BuildContext context, Function(String?) onDocumentPicked) async {
    showModalBottomSheet(
      backgroundColor: AppColors.blueClr,
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.file_copy),
                title: const Text("Pick a Document"),
                onTap: () async {
                  Navigator.pop(context); // Close the bottom sheet
                  final pickedDocument = await _pickDocument();
                  onDocumentPicked(
                      pickedDocument); // Pass document path to the callback
                },
              ),
            ],
          ),
        );
      },
    );
  }

  /// Future function to pick a document using FilePicker
  static Future<String?> _pickDocument() async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf', 'doc', 'docx', 'txt'], // Allowed extensions
      );
      if (result != null && result.files.single.path != null) {
        return result.files.single.path; // Return the file path
      }
      return null; // No file selected
    } catch (e) {
      debugPrint("Error picking document: $e");
      return null;
    }
  }
}
