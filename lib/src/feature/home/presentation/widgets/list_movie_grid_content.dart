import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ra_movie/src/core/extensions/context_extension.dart';
import 'package:ra_movie/src/domain/model/movie/movie_model.dart';
import 'package:ra_movie/src/feature/home/presentation/provider/movie_list/movie_list_provider.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ListMovieGridContent extends ConsumerWidget {
  const ListMovieGridContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final moviesProvider = ref.watch(movieListProvider);
    final movies = moviesProvider.value ?? [];
    return Skeletonizer(
      enabled: moviesProvider.isLoading,
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 9 / 16,
          crossAxisSpacing: 6.dg,
          mainAxisSpacing: 6.dg,
        ),
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final data = movies[index];
          return _ListMovieCard(movie: data);
        },
      ),
    );
  }
}

class _ListMovieCard extends StatelessWidget {
  final MovieModel movie;

  const _ListMovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    final tx = context.txTheme();
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: Colors.blueGrey,
            ),
          ),
        ),
        Text(movie.title, style: tx.labelLarge),
        Row(
          spacing: 4.w,
          children: [
            Icon(Icons.star_border_outlined),
            Text(
              "${movie.rating.toStringAsPrecision(1)}/10",
              style: tx.bodySmall,
            ),
          ],
        ),
      ],
    );
  }
}
