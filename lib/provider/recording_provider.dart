import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:record/record.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

class VoiceRecorderProvider extends ChangeNotifier {
  final AudioRecorder audioRecorder = AudioRecorder();
  final AudioPlayer audioPlayer = AudioPlayer();

//  int counter = 0;
//  void increment(){
//   counter++;
//   print(counter);
//   notifyListeners();
//  }
  bool isRecording = false;
  bool isPlaying = false;
  String? recordingPath;

  int seconds = 0;
  Timer? timer;

  // bool get isRecording => _isRecording;
  // bool get isPlaying => _isPlaying;
  // String? get recordingPath => _recordingPath;
  // int get seconds => _seconds;

  // Start timer
  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      seconds++;
      notifyListeners();
    });
  }

  // Stop timer
  void stopTimer() {
    timer?.cancel();
    seconds = 0;
    notifyListeners();
  }

  String formatTime(int seconds) {
    int hours = seconds ~/ 3600;
    int minutes = (seconds % 3600) ~/ 60;
    int remainingSeconds = seconds % 60;
    return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  Future<void> startRecording() async {
    if (await audioRecorder.hasPermission()) {
      final Directory appDocumentsDir =
          await getApplicationDocumentsDirectory();
      final String filePath = p.join(appDocumentsDir.path, "recording.wav");
      await audioRecorder.start(const RecordConfig(), path: filePath);
      recordingPath = null;
      isRecording = true;
      startTimer();
      notifyListeners();
    }
  }

  Future<void> stopRecording() async {
    String? filePath = await audioRecorder.stop();
    if (filePath != null) {
      stopTimer();
      isRecording = false;
      recordingPath = filePath;
      notifyListeners();
    }
  }

  Future<void> togglePlayback() async {
    if (audioPlayer.playing) {
      await audioPlayer.stop();
      isPlaying = false;
    } else if (recordingPath != null) {
      await audioPlayer.setFilePath(recordingPath!);
      startTimer();
      await audioPlayer.play();
      stopTimer();
    }
    notifyListeners();
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    stopTimer();
    super.dispose();
  }
}
