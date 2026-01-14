
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ra_movie/src/core/extensions/context_extension.dart';
import 'package:ra_movie/l10n/l10n.dart';
import 'package:ra_movie/src/feature/home/presentation/widgets/carousel_home_content.dart';
import 'package:ra_movie/src/feature/home/presentation/widgets/list_movie_grid_content.dart';
import 'package:ra_movie/src/feature/home/presentation/widgets/movie_category_list.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final tx = context.txTheme();
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 4.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              Text(context.l10n.appTitle, style: tx.titleLarge),
              Container(
                width: 32.dg,
                height: 32.dg,
                decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.yellowAccent),
              ),
            ],
          ),
          SizedBox(height: 8.h,),
          CarouselHomeContent(),
          SizedBox(height: 50.h, child: MovieCategoryList()),
          ListMovieGridContent(),
        ],
      ),
    );
  }
}
