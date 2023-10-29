import 'package:flutter/material.dart';
import 'package:forestvpn_test/repositories/news/models/models.dart';
import 'package:forestvpn_test/ui/ui.dart';

class LatestNewsCard extends StatelessWidget {
  const LatestNewsCard({
    super.key,
    required this.article,
  });
  final Article article;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 100,
      padding: const EdgeInsets.symmetric(vertical: 24),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        shadows: _cardShadows,
      ),
      child: _BodyLatestNewsCard(article: article),
    );
  }

  List<BoxShadow> get _cardShadows {
    return const [
      BoxShadow(
        color: Color(0x19000000),
        blurRadius: 20,
        offset: Offset(4, 4),
        spreadRadius: 0,
      ),
      BoxShadow(
        color: Color(0xFFFFFFFF),
        blurRadius: 8,
        offset: Offset(-4, -4),
        spreadRadius: 0,
      )
    ];
  }
}

class _BodyLatestNewsCard extends StatelessWidget {
  const _BodyLatestNewsCard({
    required this.article,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 60,
              width: 90,
              child: ShimmeredNetworkImage(
                imageUrl: article.imageUrl,
                circularBorderRadius: 12,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  article.title,
                  style: context.textTheme.titleSmall,
                  overflow: TextOverflow.visible,
                  maxLines: 2,
                ),
                Text(
                  _publicationDateString,
                  style: context.textTheme.bodySmall,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  String get _publicationDateString {
    final int days = DateTime.now().difference(article.publicationDate).inDays;
    if (days == 0) {
      return 'Today';
    } else if (days == 1) {
      return '1 day ago';
    }
    return '$days days ago';
  }
}
