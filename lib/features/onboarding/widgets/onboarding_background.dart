import 'package:appoinx/core/theme/extensions/app_colors_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class OnboardingBackground extends StatelessWidget {
  const OnboardingBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      bottom: 0,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: MasonryGridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 20,
            itemCount: 8 + 1,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              if (index == 1) {
                return const SizedBox(height: 32);
              }

              return Container(
                clipBehavior: Clip.hardEdge,
                width: 181,
                height: 209,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: context.appColorsExtensions.neutral0,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
