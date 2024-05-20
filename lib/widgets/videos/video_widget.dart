import 'package:flutter/material.dart';
import '../../theme/colors.dart';
import 'header_video_widget.dart';

class VideoWidget extends StatefulWidget {
  final String photoProfil;
  final String pseudo;
  final String duration;
  final bool live;
  final String videoUrl;
  final String title;
  final int likes;
  const VideoWidget({
    Key? key,
    required this.photoProfil,
    required this.pseudo,
    required this.duration,
    required this.live,
    required this.videoUrl,
    required this.title,
    required this.likes,
  }) : super(key: key);

  @override
  _VideoWidgetState createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  final ScrollController _scrollController = ScrollController(
    initialScrollOffset: 65,
    keepScrollOffset: true,
  );
  _VideoWidgetState();

  @override
  Widget build(BuildContext context) {
    double screenSize = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: double.infinity,
      child: Column(
        children: [
          HeaderVideoWidget(
            photoProfil: widget.photoProfil,
            pseudo: widget.pseudo,
            duration: widget.duration,
            live: widget.live,
          ),
          SizedBox(
            height: 155,
            width: double.infinity,
            child: SingleChildScrollView(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 155,
                    width: 80,
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      color: kColorSecondary,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          color: kWhite,
                          iconSize: 25,
                          icon: const Icon(Icons.add_circle_outline),
                          onPressed: () {},
                        ),
                        IconButton(
                          color: kWhite,
                          iconSize: 25,
                          icon: const Icon(Icons.delete),
                          onPressed: () {},
                        ),
                        IconButton(
                          color: kWhite,
                          iconSize: 25,
                          icon: const Icon(Icons.watch_later),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    height: 155,
                    width: (screenSize - 90),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage(widget.videoUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: CircleAvatar(
                            backgroundColor: kColorPrimary,
                            child: IconButton(
                              color: kWhite,
                              icon: const Icon(Icons.play_arrow_rounded),
                              onPressed: () {
                                _scrollController.jumpTo(65);
                              },
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(children: [
                              Expanded(
                                child: Text(
                                  widget.title,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: kWhite,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                              Text(
                                '${widget.likes}K Likes',
                                style: const TextStyle(
                                  color: kWhite,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ])
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 155,
                    width: 80,
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        topLeft: Radius.circular(20.0),
                      ),
                      color: kColorPrimary,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          color: kWhite,
                          iconSize: 25,
                          icon: const Icon(Icons.add_circle_outline),
                          onPressed: () {},
                        ),
                        IconButton(
                          color: kWhite,
                          iconSize: 25,
                          icon: const Icon(Icons.delete),
                          onPressed: () {},
                        ),
                        IconButton(
                          color: kWhite,
                          iconSize: 25,
                          icon: const Icon(Icons.watch_later),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 16, 10, 5),
            height: 1,
            color: Colors.grey[200],
          ),
        ],
      ),
    );
  }
}
