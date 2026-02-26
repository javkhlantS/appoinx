import 'package:appoinx/core/theme/extensions/app_colors_extensions.dart';
import 'package:appoinx/core/theme/extensions/app_text_styles_extensions.dart';
import 'package:appoinx/features/onboarding/controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingContent extends StatefulWidget {
  const OnboardingContent({super.key});

  @override
  State<OnboardingContent> createState() => _OnboardingContentState();
}

class _OnboardingContentState extends State<OnboardingContent> {
  double _pageHeight = 0;
  final _measureKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final box = _measureKey.currentContext?.findRenderObject() as RenderBox?;
      if (box != null && mounted) {
        setState(() => _pageHeight = box.size.height);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.to;
    final colors = context.appColorsExtensions;

    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      height: MediaQuery.of(context).size.height * 0.42,
      child: Container(
        decoration: BoxDecoration(
          color: colors.neutral0,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        padding: EdgeInsets.only(
          top: 32,
          left: 24,
          right: 24,
          bottom: MediaQuery.of(context).padding.bottom,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (_pageHeight == 0)
              _PageItem(
                key: _measureKey,
                title: controller.pageItems[0]["title"] as String,
                highlightTitle:
                    controller.pageItems[0]["highlightTitle"] as String,
                description: controller.pageItems[0]["description"] as String,
              )
            else
              Flexible(
                fit: FlexFit.loose,
                child: SizedBox(
                  height: _pageHeight,
                  child: PageView(
                    controller: controller.pageController,
                    children: [
                      for (int i = 0; i < controller.pageItems.length; i++)
                        _PageItem(
                          title: controller.pageItems[i]["title"] as String,
                          highlightTitle:
                              controller.pageItems[i]["highlightTitle"]
                                  as String,
                          description:
                              controller.pageItems[i]["description"] as String,
                        ),
                    ],
                  ),
                ),
              ),
            SmoothPageIndicator(
              controller: controller.pageController,
              count: controller.pageItems.length,
              effect: ExpandingDotsEffect(
                dotWidth: 4,
                dotHeight: 4,
                dotColor: colors.green75,
                spacing: 7,
                activeDotColor: colors.green300,
                expansionFactor: 5,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: controller.skip,
                  child: const Text("Skip"),
                ),
                IconButton.filled(
                  onPressed: controller.continuePage,
                  style: IconButton.styleFrom(
                    backgroundColor: colors.green300,
                    foregroundColor: colors.neutral0,
                    iconSize: 32,
                    fixedSize: const Size(64, 64),
                  ),
                  icon: Icon(PhosphorIcons.caretRight()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _PageItem extends StatelessWidget {
  final String title;
  final String highlightTitle;
  final String description;

  const _PageItem({
    super.key,
    required this.title,
    required this.highlightTitle,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final textStyles = context.appTextStylesExtensions;
    final colors = context.appColorsExtensions;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: title,
                style: textStyles.h1.copyWith(
                  color: colors.neutral900,
                ),
              ),
              TextSpan(
                text: highlightTitle,
                style: textStyles.h1.copyWith(
                  color: colors.green300,
                ),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        Text(
          description,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
