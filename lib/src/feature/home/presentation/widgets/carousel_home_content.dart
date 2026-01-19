import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ra_movie/src/core/extensions/context_extension.dart';
import 'package:ra_movie/src/domain/model/banner/banner_model.dart';
import 'package:ra_movie/src/feature/home/presentation/provider/banner_carousel/banner_carousel_provider.dart';

class CarouselHomeContent extends ConsumerStatefulWidget {
  const CarouselHomeContent({super.key});

  @override
  ConsumerState<CarouselHomeContent> createState() =>
      _CarouselHomeContentState();
}

class _CarouselHomeContentState extends ConsumerState<CarouselHomeContent> {
  final carouselController = CarouselSliderController();
  int _currentIndex = 0;

  List<Widget> bannerWidget(List<BannerModel> data) {
    Widget widget(BannerModel value) {
      return Container(child: Text(value.title),);
    }
    return data.map(widget,).toList();
  }

  @override
  Widget build(BuildContext context) {
    final cs = context.cs();
    final bannerProvider = ref.watch(bannerCarouselProvider);
    final content = bannerProvider.value ?? [];
    final contentWidget = bannerWidget(content);
    return Column(
      children: [
        CarouselSlider(
          items: contentWidget,
          carouselController: carouselController,
          options: CarouselOptions(
            height: 150.h,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: content
              .asMap()
              .entries
              .map(
                (e) =>
                GestureDetector(
                  child: Container(
                    width: 12.w,
                    height: 12.h,
                    margin: EdgeInsets.symmetric(
                        horizontal: 6.dg, vertical: 3.dg),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: cs.primary.withValues(
                        alpha: _currentIndex == e.key ? 0.9 : 0.2,
                      ),
                    ),
                  ),
                ),
          )
              .toList(),
        ),
      ],
    );
  }
}
