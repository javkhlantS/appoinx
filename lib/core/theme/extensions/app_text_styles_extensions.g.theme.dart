// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element

part of 'app_text_styles_extensions.dart';

// **************************************************************************
// ThemeExtensionsGenerator
// **************************************************************************

mixin _$AppTextStylesExtensions on ThemeExtension<AppTextStylesExtensions> {
  @override
  ThemeExtension<AppTextStylesExtensions> copyWith({
    TextStyle? h1,
    TextStyle? h2,
    TextStyle? h3,
    TextStyle? hero1,
    TextStyle? hero2,
    TextStyle? hero3Medium,
    TextStyle? hero3,
    TextStyle? subtitle1,
    TextStyle? subtitle2,
    TextStyle? subtitle3,
    TextStyle? subtitle4,
    TextStyle? body1,
    TextStyle? body2,
    TextStyle? body3,
    TextStyle? body4,
  }) {
    final _this = (this as AppTextStylesExtensions);

    return AppTextStylesExtensions(
      h1: h1 ?? _this.h1,
      h2: h2 ?? _this.h2,
      h3: h3 ?? _this.h3,
      hero1: hero1 ?? _this.hero1,
      hero2: hero2 ?? _this.hero2,
      hero3Medium: hero3Medium ?? _this.hero3Medium,
      hero3: hero3 ?? _this.hero3,
      subtitle1: subtitle1 ?? _this.subtitle1,
      subtitle2: subtitle2 ?? _this.subtitle2,
      subtitle3: subtitle3 ?? _this.subtitle3,
      subtitle4: subtitle4 ?? _this.subtitle4,
      body1: body1 ?? _this.body1,
      body2: body2 ?? _this.body2,
      body3: body3 ?? _this.body3,
      body4: body4 ?? _this.body4,
    );
  }

  @override
  ThemeExtension<AppTextStylesExtensions> lerp(
    ThemeExtension<AppTextStylesExtensions>? other,
    double t,
  ) {
    if (other is! AppTextStylesExtensions) {
      return this;
    }

    final _this = (this as AppTextStylesExtensions);

    return AppTextStylesExtensions(
      h1: TextStyle.lerp(_this.h1, other.h1, t)!,
      h2: TextStyle.lerp(_this.h2, other.h2, t)!,
      h3: TextStyle.lerp(_this.h3, other.h3, t)!,
      hero1: TextStyle.lerp(_this.hero1, other.hero1, t)!,
      hero2: TextStyle.lerp(_this.hero2, other.hero2, t)!,
      hero3Medium: TextStyle.lerp(_this.hero3Medium, other.hero3Medium, t)!,
      hero3: TextStyle.lerp(_this.hero3, other.hero3, t)!,
      subtitle1: TextStyle.lerp(_this.subtitle1, other.subtitle1, t)!,
      subtitle2: TextStyle.lerp(_this.subtitle2, other.subtitle2, t)!,
      subtitle3: TextStyle.lerp(_this.subtitle3, other.subtitle3, t)!,
      subtitle4: TextStyle.lerp(_this.subtitle4, other.subtitle4, t)!,
      body1: TextStyle.lerp(_this.body1, other.body1, t)!,
      body2: TextStyle.lerp(_this.body2, other.body2, t)!,
      body3: TextStyle.lerp(_this.body3, other.body3, t)!,
      body4: TextStyle.lerp(_this.body4, other.body4, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other.runtimeType != runtimeType) {
      return false;
    }

    final _this = (this as AppTextStylesExtensions);
    final _other = (other as AppTextStylesExtensions);

    return _other.h1 == _this.h1 &&
        _other.h2 == _this.h2 &&
        _other.h3 == _this.h3 &&
        _other.hero1 == _this.hero1 &&
        _other.hero2 == _this.hero2 &&
        _other.hero3Medium == _this.hero3Medium &&
        _other.hero3 == _this.hero3 &&
        _other.subtitle1 == _this.subtitle1 &&
        _other.subtitle2 == _this.subtitle2 &&
        _other.subtitle3 == _this.subtitle3 &&
        _other.subtitle4 == _this.subtitle4 &&
        _other.body1 == _this.body1 &&
        _other.body2 == _this.body2 &&
        _other.body3 == _this.body3 &&
        _other.body4 == _this.body4;
  }

  @override
  int get hashCode {
    final _this = (this as AppTextStylesExtensions);

    return Object.hash(
      runtimeType,
      _this.h1,
      _this.h2,
      _this.h3,
      _this.hero1,
      _this.hero2,
      _this.hero3Medium,
      _this.hero3,
      _this.subtitle1,
      _this.subtitle2,
      _this.subtitle3,
      _this.subtitle4,
      _this.body1,
      _this.body2,
      _this.body3,
      _this.body4,
    );
  }
}

extension AppTextStylesExtensionsBuildContext on BuildContext {
  AppTextStylesExtensions get appTextStylesExtensions =>
      Theme.of(this).extension<AppTextStylesExtensions>()!;
}
