import 'package:flutter/material.dart';
import "package:story_view/story_view.dart";

final controller = StoryController();

List<StoryItem> storyItems = [
  StoryItem.pageImage(
    url:
        'https://i.pinimg.com/originals/2a/ed/b4/2aedb43554beaeb62d956e76683189b7.jpg',
    controller: controller,
  ),
  StoryItem.pageImage(
    url:
        'https://i.pinimg.com/originals/70/58/a7/7058a7f0158ce34a24e7bd515b635b6c.jpg',
    controller: controller,
  ),
  StoryItem.pageImage(
    url:
        'https://i.pinimg.com/564x/d3/79/2e/d3792e3fb00ec3d38532ee24f2a10552.jpg',
    controller: controller,
  ),
  StoryItem.pageImage(
    url:
        'https://i.pinimg.com/736x/63/f4/9f/63f49ff7a1b04ebcc5945dce829e21be.jpg',
    controller: controller,
  ),
  StoryItem.pageImage(
    url:
        'https://i.pinimg.com/564x/c3/52/79/c35279711d565e5e04061bbcf30ce00a.jpg',
    controller: controller,
  ),
  StoryItem.pageImage(
      url:
          'https://i.pinimg.com/originals/c4/ab/c9/c4abc90c158ed3f985bad565bd4405ef.jpg',
      controller: controller),
  StoryItem.pageImage(
    url:
        'https://i.pinimg.com/originals/b2/04/6e/b2046eaf807f7cd33a27b40a1f21759b.jpg',
    controller: controller,
  ),
  StoryItem.pageImage(
    url:
        'https://i.pinimg.com/originals/d8/0f/9e/d80f9e75e90bfd008ecb0aafb6d02700.jpg',
    controller: controller,
  ),
  StoryItem.pageImage(
    caption: const Text('Thanos snap'),
    url:
        'https://img.wattpad.com/2bbe072670f5df4fd64a893f59715d35a0029743/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f776174747061642d6d656469612d736572766963652f53746f7279496d6167652f47673334794d53587367414875413d3d2d3836303537383030382e313630326338323962653062656137663137323932323631353131362e676966',
    controller: controller,
  ),
  StoryItem.text(
    title: 'The Earth Is Flat...',
    backgroundColor: Colors.blue,
  ),
];
