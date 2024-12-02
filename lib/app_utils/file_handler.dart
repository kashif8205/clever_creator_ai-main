import 'dart:io';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerBottomSheet {
  /// Static method to show the modal bottom sheet
  static Future<void>  showImageSourceBottomSheet(
      BuildContext context, Function(File?) onImagePicked) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text(AppStrings.gallary),
                onTap: () async {
                  Navigator.pop(context);  // Close the bottom sheet
                  final pickedImage = await _pickImage(ImageSource.gallery);
                  onImagePicked(pickedImage);  // Pass the picked image back to the parent
                },
              ),
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text(AppStrings.camera),
                onTap: () async {
                  Navigator.pop(context);  // Close the bottom sheet
                  final pickedImage = await _pickImage(ImageSource.camera);
                  onImagePicked(pickedImage);  // Pass the picked image back to the parent
                },
              ),
            ],
          ),
        );
      },
    );
  }

  /// Unified image picker method
  static Future<File?> _pickImage(ImageSource source) async {
    final returnedImage = await ImagePicker().pickImage(source: source);
    if (returnedImage == null) return null;
    return File(returnedImage.path);
  }
}
