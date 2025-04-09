import 'package:flutter/material.dart';

class CustomImageSlider extends StatefulWidget {
  const CustomImageSlider(
      {required this.row, this.initialOffset = 0.0, super.key});
  final int row;
  final double initialOffset;

  @override
  State<CustomImageSlider> createState() => _CustomImageSliderState();
}

class _CustomImageSliderState extends State<CustomImageSlider>
    with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  late AnimationController _animationController;
  late List<String> _images;

  List<String> get _duplicatedImages => [
        ..._images,
        ..._images,
        ..._images,
        ..._images,
        ..._images,
        ..._images,
        ..._images,
        ..._images
      ];

  @override
  void initState() {
    super.initState();
    _images = (widget.row == 1)
        ? [
            "assets/images/authentication/image1.jpg",
            "assets/images/authentication/image2.jpg",
            "assets/images/authentication/image3.jpg",
            "assets/images/authentication/image4.jpg",
          ]
        : [
            "assets/images/authentication/image5.jpg",
            "assets/images/authentication/image6.jpg",
            "assets/images/authentication/image7.jpg",
            "assets/images/authentication/image8.jpg",
          ];

    _scrollController = ScrollController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.jumpTo(widget.initialOffset);
    });

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..addListener(() {
        if (_scrollController.hasClients) {
          final maxScroll = _scrollController.position.maxScrollExtent;
          final current = _scrollController.offset;
          if (widget.row == 1) {
            if (current >= maxScroll / 2) {
              _scrollController.jumpTo(0);
            } else {
              _scrollController.jumpTo(current + 1.2);
            }
          } else {
            if (current <= 0) {
              _scrollController.jumpTo(maxScroll / 2);
            } else {
              _scrollController.jumpTo(current - 1.2);
            }
          }
        }
      });

    _animationController.repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: _duplicatedImages.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 6),
            width: MediaQuery.of(context).size.width * 0.33,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(_duplicatedImages[index], fit: BoxFit.cover),
            ),
          );
        },
      ),
    );
  }
}
