import 'package:flutter/material.dart';
import 'package:forestvpn_test/repositories/news/models/article.dart';
import 'package:forestvpn_test/ui/ui.dart';

import 'widgets/latest_news_card.dart';
import 'widgets/widgets.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  static const pixelsPaddingBody = 28.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainScreenAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(pixelsPaddingBody),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Text('Featured', style: context.textTheme.titleLarge),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: FeaturedNews(pixelsPaddingBody: pixelsPaddingBody, testArticle: testArticle),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text('Latest news', style: context.textTheme.titleLarge),
              ),
            ),
            SliverList.separated(
              itemCount: 4,
              itemBuilder: (context, index) => LatestNewsCard(
                article: testArticle,
              ),
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FeaturedNews extends StatelessWidget {
  const FeaturedNews({
    super.key,
    required this.pixelsPaddingBody,
    required this.testArticle,
  });

  final double pixelsPaddingBody;
  final Article testArticle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.separated(
        separatorBuilder: (context, index) => Container(
          width: 20,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: MediaQuery.of(context).size.width - pixelsPaddingBody * 2,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: ShimmeredNetworkImage(imageUrl: testArticle.imageUrl),
            ),
          );
        },
      ),
    );
  }
}
