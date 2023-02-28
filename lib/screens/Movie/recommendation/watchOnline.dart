// ignore: file_names
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:ott_demo/screens/Movie/recommendation/reccomendation.dart';
import 'package:video_player/video_player.dart';

class ChewieDemo extends StatefulWidget {
  const ChewieDemo({super.key, this.title = 'Stranger Things '});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _ChewieDemoState();
  }
}

class _ChewieDemoState extends State<ChewieDemo> {
  TargetPlatform? _platform;
  late VideoPlayerController _videoPlayerController1;
  late VideoPlayerController _videoPlayerController2;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController1 = VideoPlayerController.network(
        'https://media.istockphoto.com/id/1345482395/video/cloud-technology-digital-data-synchronization-with-data-storage-through-internet-computer.mp4?s=mp4-640x640-is&k=20&c=Xpft5ossBJFsP9Tw1DpNau74VY3A6ca-N-i77z7o22Y=');

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      aspectRatio: 12 / 7,
      showOptions: true,
      showControls: true,
      autoPlay: true,
      looping: false,
      allowMuting: true,
      allowFullScreen: true,
      useRootNavigator: true,
      fullScreenByDefault: false,
      // hideControlsTimer: Duration(seconds: 0),
      // isLive: true,
      // controlsSafeAreaMinimum: EdgeInsets.all(20),
      // subtitle: Subtitles("" as List<Subtitle?>),

      // Try playing around with some of these other options:

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
  }

  @override
  void dispose() {
    _videoPlayerController1.dispose();
    _videoPlayerController2.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(children: <Widget>[
          Expanded(
            child: Center(
              child: Chewie(
                controller: _chewieController,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _chewieController.enterFullScreen();
            },
            child: const Text('Fullscreen'),
          ),
          const Divider(
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 15),
            child: Column(
              children: [
                Row(
                  children: const [
                    Text(
                      "Reccomendation for you",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 250,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Reccomendation()));
                    },
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                InkWell(
                                  child: Container(
                                    height: 180,
                                    width: 350,
                                    decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://images.unsplash.com/photo-1580130775562-0ef92da028de?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fG1vdmllJTIwcG9zdGVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                                          fit: BoxFit.fill,
                                        ),
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 239, 235, 235),
                                            width: 2.0,
                                            style: BorderStyle.solid),
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color.fromARGB(
                                                    255, 145, 143, 143)
                                                .withOpacity(0.2),
                                            spreadRadius: 5,
                                            blurRadius: 5,
                                            offset: const Offset(0,
                                                0), // changes x,y position of shadow
                                          ),
                                        ],
                                        shape: BoxShape.rectangle),
                                  ),
                                ),
                              ],
                            ));
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Row(
          //   children: <Widget>[
          //     Padding(
          //       padding: const EdgeInsets.only(top: 10.0, left: 8),
          //       child: Row(
          //         children: [
          //           Column(
          //             children: const [
          //               Text(
          //                 "Top Recommendation for you",
          //                 style: TextStyle(
          //                     fontSize: 25, fontWeight: FontWeight.bold),
          //               )
          //             ],
          //           ),

          //         ],
          //       ),
          //     ),
          //     Expanded(
          //       child: SizedBox(
          //         height: 200,
          //         child: ListView.builder(
          //           scrollDirection: Axis.horizontal,
          //           itemCount: 10,
          //           itemBuilder: (BuildContext context, int index) {
          //             return Padding(
          //               padding: const EdgeInsets.all(10.0),
          //               child: Container(
          //                 height: 600,
          //                 width: 345,
          //                 decoration: BoxDecoration(
          //                   borderRadius: const BorderRadius.all(
          //                     Radius.circular(10),
          //                   ),
          //                   image: DecorationImage(
          //                       fit: BoxFit.fill,
          //                       colorFilter: ColorFilter.mode(
          //                           Colors.black.withOpacity(1),
          //                           BlendMode.dstATop),
          //                       image: const NetworkImage(
          //                         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSL8EYmyUxMaTyGvkgUIg9ygsM6CD6A7QaxLtzD4k5kNhhUc1egbshslkm2VcEnX8CJO2Y&usqp=CAU",
          //                       )),
          //                 ),
          //                 child: Padding(
          //                   padding: const EdgeInsets.only(left: 230.0, top: 5),
          //                   child: Column(
          //                     mainAxisAlignment: MainAxisAlignment.start,
          //                     children: [
          //                       Padding(
          //                         padding: EdgeInsets.only(right: 0.0),
          //                         child: Row(
          //                           children: const [
          //                             Text(
          //                               "OTT Original",
          //                               style: TextStyle(
          //                                 color: Colors.redAccent,
          //                                 fontSize: 20,
          //                               ),
          //                             )
          //                           ],
          //                         ),
          //                       ),
          //                     ],
          //                   ),
          //                 ),
          //               ),
          //             );
          //           },
          //         ),
          //       ),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.only(top: 10.0, left: 8),
          //       child: Column(
          //         children: [
          //           Row(
          //             children: const [
          //               Text(
          //                 "Top Recommendation for you",
          //                 style: TextStyle(
          //                     fontSize: 25, fontWeight: FontWeight.bold),
          //               )
          //             ],
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
        ]));
  }
}
