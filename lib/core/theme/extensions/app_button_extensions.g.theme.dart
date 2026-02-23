// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element

part of 'app_button_extensions.dart';

// **************************************************************************
// ThemeExtensionsGenerator
// **************************************************************************

mixin _$AppButtonExtensions on ThemeExtension<AppButtonExtensions> {
  @override
  ThemeExtension<AppButtonExtensions> copyWith({
    ButtonStyle? textButton,
    ButtonStyle? primaryButton,
  }) {
    final _this = (this as AppButtonExtensions);

    return AppButtonExtensions(
      textButton: textButton ?? _this.textButton,
      primaryButton: primaryButton ?? _this.primaryButton,
    );
  }

  @override
  ThemeExtension<AppButtonExtensions> lerp(
    ThemeExtension<AppButtonExtensions>? other,
    double t,
  ) {
    if (other is! AppButtonExtensions) {
      return this;
    }

    final _this = (this as AppButtonExtensions);

    return AppButtonExtensions(
      textButton: ButtonStyle.lerp(_this.textButton, other.textButton, t)!,
      primaryButton: ButtonStyle.lerp(
        _this.primaryButton,
        other.primaryButton,
        t,
      )!,
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

    final _this = (this as AppButtonExtensions);
    final _other = (other as AppButtonExtensions);

    return _other.textButton == _this.textButton &&
        _other.primaryButton == _this.primaryButton;
  }

  @override
  int get hashCode {
    final _this = (this as AppButtonExtensions);

    return Object.hash(runtimeType, _this.textButton, _this.primaryButton);
  }
}

extension AppButtonExtensionsBuildContext on BuildContext {
  AppButtonExtensions get appButtonExtensions =>
      Theme.of(this).extension<AppButtonExtensions>()!;
}
