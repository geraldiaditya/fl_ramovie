import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ra_movie/src/core/extensions/context_extension.dart';
import 'package:ra_movie/src/feature/home/presentation/provider/category_list/category_list_provider.dart';
import 'package:skeletonizer/skeletonizer.dart';

class MovieCategoryList extends ConsumerWidget {
  const MovieCategoryList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listProvider=ref.watch(categoryListProvider);
    final category=listProvider.value??[];
    return Skeletonizer(
      enabled: listProvider.isLoading,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(width: 16.w),
        itemBuilder: (context, index) {
          final data=category[index];
          return ChoiceChip(
            label: Text(data.name, style: context.txTheme().labelLarge),
            backgroundColor: Colors.blueAccent,
            selectedColor: Colors.teal,
            selected: false,
            side: BorderSide(width: 0.5.dm, color: Colors.blueAccent),
            showCheckmark: false,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.r),
            ),
          );
        },
        itemCount: category.length,
      ),
    );
  }
}
