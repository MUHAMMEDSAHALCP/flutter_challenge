import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shimmer/shimmer.dart';

class ArticleListSkeleton extends StatelessWidget {
  const ArticleListSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 10.0,
                        color: Colors.white,
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: double.infinity,
                        height: 10.0,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              const  Gap(16),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.white,
                ),
              const  Gap(16),
              ],
            ),
          ),
        );
      },
    );
  }
}
