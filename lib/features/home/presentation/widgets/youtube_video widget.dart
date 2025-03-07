import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gym_system/core/utils/app_color.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeVideowidget extends StatefulWidget {
  const YoutubeVideowidget({super.key});

  @override
  State<YoutubeVideowidget> createState() => _YoutubeVideowidgetState();
}

class _YoutubeVideowidgetState extends State<YoutubeVideowidget> {
final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'tUykoP30Gb0',
    flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
    ),
);
@override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
    controller: _controller,
    showVideoProgressIndicator: true,
    progressIndicatorColor: AppColor.primaryColor,
    progressColors: const ProgressBarColors(
      playedColor: AppColor.primaryColor,
      handleColor: AppColor.primaryColor,
    ),
    
    onReady: () {
    
    },
);
  }
}