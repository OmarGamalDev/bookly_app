import 'package:bookly_app/Features/home/presentation/views/widgets/custom_drawer_widget.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.scaffoldKey});

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawerWidget(),
      body: HomeViewBody(scaffoldKey: scaffoldKey),
    );
  }
}
