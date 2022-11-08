import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/constants/app_constant.dart';
import '../core/helpers/theme_helper.dart';
import '../core/resource/app_images.dart';

class AppTextFormField extends StatefulWidget {
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validate;
  final String? label;
  final String? hint;
  final int? maxLength;
  final List<TextInputFormatter>? formatters;
  final bool enabled;
  final InputBorder border;
  final bool obscureText;
  final Widget? suffix;
  final VoidCallback? onTap;
  final bool suffixChangeByValidate;
  final bool isRequired;
  final Widget? prefixIcon;
  final double? radius;

  const AppTextFormField({
    Key? key,
    this.keyboardType,
    this.controller,
    this.label,
    this.maxLength,
    this.formatters,
    this.hint,
    this.enabled = true,
    this.border = InputBorder.none,
    this.obscureText = false,
    this.validate,
    this.suffix,
    this.onTap,
    this.suffixChangeByValidate = false,
    this.isRequired = false,
    this.prefixIcon,
    this.radius,
  }) : super(key: key);

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  bool _obscureText = false;
  bool? _validate;

  @override
  void initState() {
    _obscureText = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label?.isNotEmpty ?? false) ...[
          Text(
            (widget.label ?? '') +
                (widget.isRequired ? AppConstant.requiredField : ''),
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
              color: ThemeHelper.textColorLabelTextField(context),
            ),
          ),
          6.verticalSpace,
        ],
        GestureDetector(
          onTap: widget.onTap,
          child: TextFormField(
            obscureText: _obscureText,
            controller: widget.controller,
            maxLength: widget.maxLength,
            inputFormatters: widget.formatters,
            enabled: widget.enabled,
            keyboardType: widget.keyboardType,
            style: TextStyle(
              fontSize: 15.sp,
              color: ThemeHelper.textColorContentTextField(context),
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.radius ?? 10.r),
                borderSide: BorderSide(
                  color: ThemeHelper.borderColorTextField(context),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.radius ?? 10.r),
                borderSide: BorderSide(
                  color: ThemeHelper.borderColorActiveTextField(context),
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.radius ?? 10.r),
                borderSide: BorderSide(
                  color: Theme.of(context).errorColor,
                ),
              ),
              isDense: true,
              contentPadding: REdgeInsets.only(
                top: 14,
                bottom: 14,
                left: 16,
                right: widget.suffix != null || widget.obscureText ? 0 : 16,
              ),
              errorMaxLines: 2,
              counterText: '',
              suffixIcon: _buildSuffix() == null
                  ? null
                  : RPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: _buildSuffix()!,
                    ),
              suffixIconConstraints: BoxConstraints.tightFor(height: 20.h),
              prefixIcon: widget.prefixIcon == null
                  ? null
                  : RPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: widget.prefixIcon!,
                    ),
              prefixIconConstraints: BoxConstraints.tightFor(height: 20.h),
              hintText: widget.hint,
              hintStyle: TextStyle(
                fontSize: 15.sp,
                color: ThemeHelper.textColorHintTextField(context),
              ),
            ),
            validator: (value) {
              final result = widget.validate?.call(value);
              final isValid = result == null;
              final isChanged = _validate != isValid;
              _validate = isValid;
              if (isChanged && widget.suffixChangeByValidate) {
                setState(() {});
              }
              return result;
            },
          ),
        ),
      ],
    );
  }

  Widget? _buildSuffix() {
    return widget.suffixChangeByValidate && _validate != null
        ? _buildSuffixByValidate()
        : widget.suffix ?? (widget.obscureText ? _buildObscure() : null);
  }

  Widget _buildSuffixByValidate() {
    return SizedBox(
      height: 14.r,
      width: 16.r,
      child: Center(
          child: Icon(
        _validate ?? false ? Icons.done : Icons.close,
      )),
    );
  }

  Widget _buildObscure() {
    return GestureDetector(
      onTap: () {
        setState(() {
          _obscureText = !_obscureText;
        });
      },
      child: SizedBox(
        height: 20.r,
        width: 20.r,
        child: Center(
          child: Icon(
            !_obscureText ? Icons.visibility : Icons.visibility_off,
          ),
        ),
      ),
    );
  }
}
