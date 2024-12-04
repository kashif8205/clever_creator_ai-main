import 'dart:io';

import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/custom_voice_container.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';
import 'package:path/path.dart' as p;

class VoiceRecScreen extends StatefulWidget {
  const VoiceRecScreen({super.key});

  @override
  State<VoiceRecScreen> createState() => _VoiceRecScreenState();
}

class _VoiceRecScreenState extends State<VoiceRecScreen> {
  final AudioRecorder audioRecorder = AudioRecorder();
  final AudioPlayer audioPlayer = AudioPlayer();

  bool isRecording = false, isPlaying = false;
  String? recordingPath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          const CustomAppBar(text: AppStrings.voiceRec, icon: AppAssets.share),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 36,
                width: 116,
                decoration: BoxDecoration(
                    color: AppColors.timerBGClr,
                    borderRadius: BorderRadius.circular(100)),
                child: const Center(
                  child: Text(
                    AppStrings.timerTxt,
                    style: AppTextStyles.primaryTxtStyle,
                  ),
                ),
              ),
              const SizedBox(
                height: 120,
              ),
              const Text(
                AppStrings.voiceRecord,
                style: AppTextStyles.voiceRecTxtStyle,
              ),
              Image.asset(AppAssets.voiceSymbol),
              const SizedBox(
                height: 75,
              ),
              if (recordingPath != null)
                MaterialButton(
                  onPressed: () async {
                    if (audioPlayer.playing) {
                      audioPlayer.stop();
                      setState(() {
                        isPlaying = false;
                      });
                    } else {
                      await audioPlayer.setFilePath(recordingPath!);
                      audioPlayer.play();
                      setState(() {
                        isPlaying = true;
                      });
                    }
                  },
                  color: AppColors.blueClr,
                  child: Text(
                    isPlaying
                        ? "Stop Playing recording"
                        : "Start playing recording",
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              if (recordingPath == null) const Text("No record Found"),
              const SizedBox(
                height: 75,
              ),
              const Text(
                AppStrings.timerTxt,
                style: AppTextStyles.cardTxtStyle,
              ),
              const SizedBox(
                height: 10,
              ),
              VoiceRecoderContainer(
                  onPressed: () async {
                    if (isRecording) {
                      String? filePath = await audioRecorder.stop();
                      if (filePath != null) {
                        setState(() {
                          isRecording = false;
                          recordingPath = filePath;
                        });
                      }
                    } else {
                      if (await audioRecorder.hasPermission()) {
                        final Directory appDocumentsDir =
                            await getApplicationDocumentsDirectory();
                        final String filePath =
                            p.join(appDocumentsDir.path, "recording.wav");
                        await audioRecorder.start(const RecordConfig(),
                            path: filePath);
                        setState(() {
                          isRecording = true;
                          recordingPath = null;
                        });
                      }
                    }
                  },
                  icon: Icon(isRecording ? Icons.stop : Icons.mic)),
            ],
          ),
        ),
      ),
    );
  }
}













// import 'dart:async';
// import 'dart:io';

// import 'package:clever_creator_ai/app_utils/app_assets.dart';
// import 'package:clever_creator_ai/app_utils/app_colors.dart';
// import 'package:clever_creator_ai/app_utils/app_strings.dart';
// import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
// import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
// import 'package:clever_creator_ai/widgets/custom_voice_container.dart';
// import 'package:flutter/material.dart';
// import 'package:just_audio/just_audio.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:record/record.dart';
// import 'package:path/path.dart' as p;

// class VoiceRecScreen extends StatefulWidget {
//   const VoiceRecScreen({super.key});

//   @override
//   State<VoiceRecScreen> createState() => _VoiceRecScreenState();
// }

// class _VoiceRecScreenState extends State<VoiceRecScreen> {
//   final AudioRecorder audioRecorder = AudioRecorder();
//   final AudioPlayer audioPlayer = AudioPlayer();

//   bool isRecording = false, isPlaying = false;
//   String? recordingPath;

//   // Timer variables
//   int seconds = 0;
//   Timer? _timer;

//   // Timer start/stop methods
//   void _startTimer() {
//     _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
//       setState(() {
//         seconds++;
//       });
//     });
//   }

//   void _stopTimer() {
//     _timer?.cancel(); // Cancel the timer
//   }

//   String _formatTime(int seconds) {
//     int hours = seconds ~/ 3600;
//     int minutes = (seconds % 3600) ~/ 60;
//     int remainingSeconds = seconds % 60;
//     return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
//   }

//   @override
//   void dispose() {
//     _stopTimer(); // Ensure timer is stopped when the widget is disposed
//     audioPlayer.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar:
//           const CustomAppBar(text: AppStrings.voiceRec, icon: AppAssets.share),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 height: 36,
//                 width: 116,
//                 decoration: BoxDecoration(
//                     color: AppColors.timerBGClr,
//                     borderRadius: BorderRadius.circular(100)),
//                 child: Center(
//                   child: Text(
//                     _formatTime(seconds), // Display the formatted timer
//                     style: AppTextStyles.primaryTxtStyle,
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 120,
//               ),
//               const Text(
//                 AppStrings.voiceRecord,
//                 style: AppTextStyles.voiceRecTxtStyle,
//               ),
//               Image.asset(AppAssets.voiceSymbol),
//               const SizedBox(
//                 height: 75,
//               ),
//               if (recordingPath != null)
//                 MaterialButton(
//                   onPressed: () async {
//                     if (audioPlayer.playing) {
//                       audioPlayer.stop();
//                       setState(() {
//                         isPlaying = false;
//                       });
//                     } else {
//                       await audioPlayer.setFilePath(recordingPath!);
//                       audioPlayer.play();
//                       setState(() {
//                         isPlaying = true;
//                       });
//                     }
//                   },
//                   color: AppColors.blueClr,
//                   child: Text(
//                     isPlaying
//                         ? "Stop Playing recording"
//                         : "Start playing recording",
//                     style: const TextStyle(color: Colors.white),
//                   ),
//                 ),
//               if (recordingPath == null) const Text("No record Found"),
//               const SizedBox(
//                 height: 75,
//               ),
//               const Text(
//                 AppStrings.timerTxt,
//                 style: AppTextStyles.cardTxtStyle,
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               VoiceRecoderContainer(
//                   onPressed: () async {
//                     if (isRecording) {
//                       // Stop recording
//                       String? filePath = await audioRecorder.stop();
//                       if (filePath != null) {
//                         _stopTimer(); // Stop the timer but do not reset seconds
//                         setState(() {
//                           isRecording = false;
//                           recordingPath = filePath;
//                         });
//                       }
//                     } else {
//                       // Start recording
//                       if (await audioRecorder.hasPermission()) {
//                         final Directory appDocumentsDir =
//                             await getApplicationDocumentsDirectory();
//                         final String filePath =
//                             p.join(appDocumentsDir.path, "recording.wav");
//                         await audioRecorder.start(const RecordConfig(),
//                             path: filePath);
//                         _startTimer(); // Start the timer
//                         setState(() {
//                           isRecording = true;
//                           recordingPath = null;
//                         });
//                       }
//                     }
//                   },
//                   icon: Icon(isRecording ? Icons.stop : Icons.mic)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
