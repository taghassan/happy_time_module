
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class HappyTimeVideoPlayerView extends StatefulWidget {
  final String videoPath;
  final Map<String,String>?httpHeaders;
  const HappyTimeVideoPlayerView({super.key, required this.videoPath,this.httpHeaders});

  @override
  VideoPlayerViewState createState() => VideoPlayerViewState();
}

class VideoPlayerViewState extends State<HappyTimeVideoPlayerView> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;
  final bool _isFullScreen = false;

  @override
  void initState() {
    super.initState();
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.landscapeRight,
    //   DeviceOrientation.landscapeLeft,
    // ]);
    _videoPlayerController = VideoPlayerController.networkUrl(
        Uri.parse(widget.videoPath),
        httpHeaders:widget.httpHeaders ?? {
          'accept': '*/*',
          'accept-language': 'ar-SD,ar;q=0.9,en-GB;q=0.8,en;q=0.7,en-US;q=0.6,zh-CN;q=0.5,zh;q=0.4',
          'origin': 'https://ufogrendizer.tv',
          'priority': 'i',
          'range': 'bytes=0-',
          'referer': 'https://ufogrendizer.tv/',
          'sec-ch-ua': '"Chromium";v="130", "Google Chrome";v="130", "Not?A_Brand";v="99"',
          'sec-ch-ua-mobile': '?0',
          'sec-ch-ua-platform': '"macOS"',
          'sec-fetch-dest': 'video',
          'sec-fetch-mode': 'cors',
          'sec-fetch-site': 'same-site'



        }
    );
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      looping: true,
      allowFullScreen: true,
      fullScreenByDefault: true
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: RotatedBox(
        quarterTurns: _isFullScreen ? 1 : 0,
        child: Center(
          child: Stack(
            children: [
              Chewie(
                controller: _chewieController,
              ),
              Positioned(
                top: 35,
                left: 10,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.close,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
