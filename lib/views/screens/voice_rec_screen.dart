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
//                 child: const Center(
//                   child: Text(
//                     AppStrings.timerTxt,
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
//                       String? filePath = await audioRecorder.stop();
//                       if (filePath != null) {
//                         setState(() {
//                           isRecording = false;
//                           recordingPath = filePath;
//                         });
//                       }
//                     } else {
//                       if (await audioRecorder.hasPermission()) {
//                         final Directory appDocumentsDir =
//                             await getApplicationDocumentsDirectory();
//                         final String filePath =
//                             p.join(appDocumentsDir.path, "recording.wav");
//                         await audioRecorder.start(const RecordConfig(),
//                             path: filePath);
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

 










import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_colors.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/provider/recording_provider.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/custom_voice_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VoiceRecScreen extends StatelessWidget {
  const VoiceRecScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("build");
    // final vProvider = Provider.of<VoiceRecorderProvider>(context, listen: false);
    return Scaffold(
      appBar: const CustomAppBar(
        text: AppStrings.voiceRec,
        icon: AppAssets.share,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Consumer<VoiceRecorderProvider>(
                builder: (context, provider, child) {
                  return Container(
                    height: 36,
                    width: 116,
                    decoration: BoxDecoration(
                      color: AppColors.timerBGClr,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Text(
                        provider.formatTime(provider.seconds),
                        style: AppTextStyles.primaryTxtStyle,
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 120),
              const Text(
                AppStrings.voiceRecord,
                style: AppTextStyles.voiceRecTxtStyle,
              ),
              Image.asset(AppAssets.voiceSymbol),
              const SizedBox(height: 75),
              Consumer<VoiceRecorderProvider>(
                builder: (context, provider, child) {
                  return provider.recordingPath != null
                      ? MaterialButton(
                          onPressed: provider.togglePlayback,
                          color: AppColors.blueClr,
                          child: Text(
                            provider.isPlaying
                                ? "Stop Playing recording"
                                : "Start playing recording",
                            style: const TextStyle(color: Colors.white),
                          ),
                        )
                      : const Text("No record Found");
                },
              ),
              const SizedBox(height: 75),
              Consumer<VoiceRecorderProvider>(
                builder: (context, provider, child) {
                  return Container(
                    height: 36,
                    width: 116,
                    decoration: BoxDecoration(
                      color: AppColors.blueClr,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Text(
                        provider.formatTime(provider.seconds),
                        style: AppTextStyles.primaryTxtStyle,
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 10),
              Consumer<VoiceRecorderProvider>(
                builder: (context, provider, child) {
                  return VoiceRecoderContainer(
                    onPressed: provider.isRecording
                        ? provider.stopRecording
                        : provider.startRecording,
                    icon: Icon(
                        provider.isRecording ? Icons.stop : Icons.mic),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
