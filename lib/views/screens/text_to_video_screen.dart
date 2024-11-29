import 'package:clever_creator_ai/app_utils/app_assets.dart';
import 'package:clever_creator_ai/app_utils/app_strings.dart';
import 'package:clever_creator_ai/app_utils/app_text_styles.dart';
import 'package:clever_creator_ai/views/screens/image_generation_screen.dart';
import 'package:clever_creator_ai/widgets/custom_app_bar.dart';
import 'package:clever_creator_ai/widgets/row_icon.dart';
import 'package:clever_creator_ai/widgets/rowfield_button.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TextToVideoScreen extends StatefulWidget {
  const TextToVideoScreen({super.key});

  @override
  State<TextToVideoScreen> createState() => _TextToVideoScreenState();
}

class _TextToVideoScreenState extends State<TextToVideoScreen> {
  late YoutubePlayerController _youtubeController;

  @override
  void initState() {
    super.initState();

    // Extract video ID from YouTube URL and initialize the controller
    _youtubeController = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
        'https://youtu.be/YnxP-1AtqUM?si=pAkNo2PSppMhUXI4',
      )!,
      flags: const YoutubePlayerFlags(
        autoPlay: false, // Change to true if you want auto-play
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _youtubeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: AppStrings.textToVideoTxt,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(AppAssets.avatar),
                  const SizedBox(width: 10),
                  const Text(
                    AppStrings.you,
                    style: AppTextStyles.imgLableTxtStyle,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                AppStrings.beautifulStoryTxt,
                style: AppTextStyles.processOfPlantstyle,
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomRowButton(
                    icon: AppAssets.editIcon,
                    text: AppStrings.editTxt,
                  ),
                  CustomRowButton(
                    icon: AppAssets.copyIcon,
                    text: AppStrings.copy,
                  ),
                  CustomRowButton(
                    icon: AppAssets.settingsIcon,
                    text: AppStrings.settings,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Divider(thickness: 1),
              const SizedBox(height: 10),
              Row(
                children: [
                  Image.asset(AppAssets.aiScienceLogo),
                  const SizedBox(width: 10),
                  const Text(
                    AppStrings.textToVideoTxt,
                    style: AppTextStyles.imgLableTxtStyle,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                AppStrings.imgLableTxt,
                style: AppTextStyles.imgLableTxtStyle,
              ),
              const SizedBox(height: 10),

              // YouTube player with rounded edges
              YoutubePlayer(
                controller: _youtubeController,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.red,
                onReady: () {
                  // print('YouTube Player is ready.');
                },
              ),

              const SizedBox(height: 10),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomRowButton(
                      icon: AppAssets.downloadIcon,
                      text: AppStrings.download,
                    ),
                    CustomRowButton(
                      icon: AppAssets.shareIcon,
                      text: AppStrings.share,
                    ),
                    CustomRowButton(
                      icon: AppAssets.regenerateIcon,
                      text: AppStrings.regenerate,
                    ),
                    CustomRowButton(
                      icon: AppAssets.likeIcon,
                      text: AppStrings.like,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              CustomFieldAndButton(
                icon: AppAssets.imageUploadIcon,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageGenerationScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
