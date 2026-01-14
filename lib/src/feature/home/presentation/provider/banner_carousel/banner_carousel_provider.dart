import 'package:ra_movie/src/domain/model/banner/banner_model.dart';
import 'package:ra_movie/src/provider/usecase/banner/get_banner_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'banner_carousel_provider.g.dart';

@riverpod
class BannerCarousel extends _$BannerCarousel {
  @override
  FutureOr<List<BannerModel>> build() async {
    return getBanner();
  }

  Future<List<BannerModel>> getBanner()async{
    final uc=ref.read(getBannerProvider);
    final res=await uc();
    return res;
  }
}
