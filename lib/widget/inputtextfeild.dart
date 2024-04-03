import 'package:app_design_mx/util/app_colors.dart';
import 'package:app_design_mx/util/appstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HGTextInputField extends StatelessWidget {
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText, labelText, initialValue, errorText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextStyle? style;
  final FocusNode? focusNode;
  final Color? iconColor;
  final bool obscureText, enabled;
  final bool autoValidate, autofocus;
  final double bottomMargin;
  final double? hintTextSize;
  final EdgeInsets? contentPadding;
  final int? maxLines;
  final double borderRadius;
  final int? maxLength;
  final String? Function(String?)? validateFunction;
  final Color? borderColor;
  final Color textColor;
  final Color? loaderColor;
  final Function(String?)? onSaved;
  final String? obscuringCharacter;
  final Function(String)? onFieldSubmitted;
  final Color? filledColor;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onClearPress;
  final VoidCallback? onEditingComplete;
  final List<TextInputFormatter>? inputFormatter;
  final bool? isLoading, showSuffix;
  final Color? cursorColor;
  final String prefixText;
  final String suffixText;
  final int scrollPadding;
  final FontWeight? hintFontWeight;
  final Color? hintFontColor;
  final double? isScrollPadding;
  final double? verticalpadding;

  const HGTextInputField({
    Key? key,
    this.hintText,
    this.obscuringCharacter,
    this.filledColor,
    this.errorText,
    this.suffixText = '',
    this.borderColor,
    this.obscureText = false,
    this.keyboardType,
    this.initialValue = '',
    this.maxLines = 1,
    this.prefixIcon,
    this.hintTextSize,
    this.iconColor,
    this.bottomMargin = 1,
    this.validateFunction,
    this.onSaved,
    this.enabled = true,
    this.autoValidate = false,
    this.borderRadius = 5,
    this.contentPadding,
    this.textInputAction,
    this.onFieldSubmitted,
    this.focusNode,
    this.controller,
    this.maxLength,
    this.inputFormatter,
    this.suffixIcon,
    this.autofocus = false,
    this.isLoading = false,
    this.onChanged,
    this.onClearPress,
    this.loaderColor,
    this.showSuffix = false,
    this.prefixText = "",
    this.scrollPadding = 12,
    this.labelText,
    this.onEditingComplete,
    this.cursorColor = AppColors.black,
    this.style,
    this.textColor = AppColors.black,
    this.hintFontWeight,
    this.hintFontColor,
    this.isScrollPadding,
    this.verticalpadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      scrollPadding: EdgeInsets.only(
        bottom: isScrollPadding ?? MediaQuery.of(context).viewInsets.bottom + scrollPadding * 4,
      ),
      // showCursor: true,
      textAlign: TextAlign.left,
      autofocus: autofocus,
      controller: controller,
      // initialValue: initialValue,
      style: style ??
          AppStyles.libreBaskerville.copyWith(
            fontSize: 14,
            color: textColor,
            fontWeight: FontWeight.w700,
          ),
      key: key,
      // cursorColor: cursorColor,
      enabled: enabled,
      obscureText: obscureText,
      keyboardType: keyboardType,
      validator: validateFunction,
      onSaved: onSaved,
      focusNode: focusNode,
      maxLength: maxLength,
      onEditingComplete: onEditingComplete,
      autovalidateMode: autoValidate ? AutovalidateMode.onUserInteraction : AutovalidateMode.disabled,
      textInputAction: textInputAction,
      maxLines: maxLines,
      onFieldSubmitted: onFieldSubmitted,
      inputFormatters: inputFormatter,
      onChanged: onChanged,
      decoration: InputDecoration(
        prefixText: prefixText,
        suffixText: suffixText,
        alignLabelWithHint: true,
        labelText: labelText,
        errorMaxLines: 3,
        counterText: '',
        fillColor: filledColor ?? AppColors.white,
        filled: true,
        contentPadding: contentPadding,
        hintText: hintText,
        errorText: errorText,
        hintStyle: AppStyles.libreBaskerville.copyWith(
          fontSize: 14,
          color: hintFontColor ?? textColor.withOpacity(0.5),
          fontWeight: hintFontWeight ?? FontWeight.w500,
        ),
        errorStyle: AppStyles.libreBaskerville.copyWith(
          fontSize: 14,
          color: Theme.of(context).colorScheme.error,
          fontWeight: FontWeight.w500,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor ?? Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor ?? Colors.transparent),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor ?? Colors.transparent),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor ?? Colors.transparent),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor ?? Colors.transparent),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor ?? Colors.transparent),
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        suffix: (showSuffix ?? false)
            ? (isLoading ?? false)
                ? SizedBox(
                    width: 20,
                    height: 20,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          loaderColor ?? AppColors.white,
                        ),
                      ),
                    ),
                  )
                : controller?.text != ""
                    ? IconButton(
                        icon: const Icon(Icons.clear, size: 28),
                        color: iconColor,
                        onPressed: () {
                          controller?.clear();
                          if (onClearPress != null) onClearPress!();
                        },
                      )
                    : null
            : null,
      ),
    );
  }
}
