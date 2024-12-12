import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerProvider extends ChangeNotifier {
  File? _selectedImage;

  File? get selectedImage => _selectedImage;

  /// Method to pick an image from either gallery or camera
  Future<void> pickImage(ImageSource source) async {
    final pickedImage = await _pickImage(source);
    if (pickedImage != null) {
      _selectedImage = pickedImage;
      notifyListeners(); // Notify listeners that the image has been picked
    }
  }

  /// Unified image picker method
  Future<File?> _pickImage(ImageSource source) async {
    final returnedImage = await ImagePicker().pickImage(source: source);
    if (returnedImage == null) return null;
    return File(returnedImage.path);
  }
}
