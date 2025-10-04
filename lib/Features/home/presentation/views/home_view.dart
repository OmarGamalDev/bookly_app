import 'package:bookly_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_drawer_widget.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/home_view_body.dart';
import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/asset_images.dart';
import 'package:bookly_app/core/utils/constants_key.dart';
import 'package:bookly_app/core/utils/service_locater.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
                ..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewestBooksCubit(getIt.get<HomeRepoImpl>())..fetchNewestBooks(),
        ),
      ],
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 12, right: 12),
            child: AppBar(
              scrolledUnderElevation: 0,
              elevation: 0,
              backgroundColor: kPrimaryColor,
              title: Image.asset(AssetImages.logo, height: 150, width: 140),
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () {
                    GoRouter.of(context).push(AppRouter.kSearchView);
                  },
                  icon: SvgPicture.asset(
                    AssetImages.search,
                    colorFilter: const ColorFilter.mode(
                      AppColors.whiteColor,
                      BlendMode.srcIn,
                    ),
                    height: 30,
                    width: 30,
                  ),
                ),
              ],
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: SvgPicture.asset(
                    AssetImages.barsStaggered,
                    colorFilter: const ColorFilter.mode(
                      AppColors.whiteColor,
                      BlendMode.srcIn,
                    ),
                    height: 30,
                    width: 30,
                  ),
                ),
              ),
            ),
          ),
        ),
        drawer: const CustomDrawerWidget(),
        body: HomeViewBody(),
      ),
    );
  }
}
