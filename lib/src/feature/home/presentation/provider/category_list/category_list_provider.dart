
import 'package:ra_movie/src/domain/model/category/movie_category.dart';
import 'package:ra_movie/src/provider/usecase/movie/get_list_movie_categories/get_list_movie_categories.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_list_provider.g.dart';

@riverpod
class CategoryList extends _$CategoryList {
  @override
  FutureOr<List<MovieCategory>> build() async {
    final uc = ref.read(getListMovieCategoriesProvider);
    final res = await uc();
    return res;
  }
}
