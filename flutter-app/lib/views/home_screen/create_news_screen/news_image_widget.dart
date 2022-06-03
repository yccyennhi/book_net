import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../configs/color_configs.dart';
import '../../../configs/style_configs.dart';
import '../../../configs/text_configs.dart';

class ImageAndPostWidget extends StatefulWidget {
  const ImageAndPostWidget({Key? key, required this.isAbleToAddImage})
      : super(key: key);

  final bool isAbleToAddImage;

  @override
  State<ImageAndPostWidget> createState() => _ImageAndPostWidgetState();
}

class _ImageAndPostWidgetState extends State<ImageAndPostWidget> {
  int _activeIndex = 0;
  final ImagePicker _imagePicker = ImagePicker();
  final List<XFile> _imageFilesList = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CarouselSlider.builder(
              itemCount: _imageFilesList.length,
              options: _buildImageOption(_imageFilesList.length),
              itemBuilder: (context, index, realIndex) {
                int totalImage = _imageFilesList.length;
                return (totalImage > 0)
                    ? _buildImage(_imageFilesList[index])
                    : const SizedBox();
              },
            ),
            (_imageFilesList.length > 1)
                ? Padding(
                    padding:
                        EdgeInsets.only(bottom: AppStyles.smallMarginVertical),
                    child: AnimatedSmoothIndicator(
                      activeIndex: _activeIndex,
                      count: _imageFilesList.length,
                      effect: WormEffect(
                          dotColor: AppColors.grayColor,
                          activeDotColor: AppColors.green1Color,
                          dotWidth: 6.w,
                          dotHeight: 6.h),
                    ),
                  )
                : const SizedBox(),
          ],
        ),
        GestureDetector(
          onTap: () => _selectImage(),
          child: (widget.isAbleToAddImage)
              ? Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppStyles.defaultMarginHorizontal,
                      vertical: AppStyles.smallMarginVertical),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Add to post',
                        style: TextConfigs.semibold16DarkGrey,
                      ),
                      SizedBox(
                        width: 24.w,
                        child: Image.asset(
                          'assets/icons/ic_image.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                )
              : null,
        ),
      ],
    );
  }

  CarouselOptions _buildImageOption(int imageListLength) {
    double viewportFraction = (imageListLength > 1) ? 0.85 : 1;
    return CarouselOptions(
      height: 232.h,
      enlargeCenterPage: true,
      viewportFraction: viewportFraction,
      enableInfiniteScroll: false,
      onPageChanged: (index, reason) => setState(() {
        _activeIndex = index;
      }),
    );
  }

  Widget _buildImage(XFile file) {
    return SizedBox(
      width: double.infinity,
      child: Image.file(
        File(file.path),
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }

  void _selectImage() async {
    final List<XFile>? selectedImage = await _imagePicker.pickMultiImage();
    if (selectedImage == null) {
      return;
    }

    if (selectedImage.isNotEmpty) {
      setState(() {
        _imageFilesList.clear();
        _imageFilesList.addAll(selectedImage);
      });
    }
  }
}
