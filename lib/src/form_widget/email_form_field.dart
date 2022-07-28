import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../packages_constant.dart';

const Color _textColor = Color(0xff757575);
const String _labelText = "Email Address";
const String _hintText = "Please Enter Your Email";
const double _textFontSize = 16;
const EdgeInsetsGeometry _edgeInsetsGeometry =
    EdgeInsets.symmetric(vertical: 24);
const Widget? _prefixIcon = Icon(Icons.email_rounded);
const Widget? _suffixIcon = null;

extension EmailFormExtension on TextFormField {
  TextFormField emailStyleOne({
    GetStringFunction valid,
    VoidStringFunction onChanged,
    VoidStringFunction onSaved,
    VoidFunction onTap,
    VoidFunction onEditingComplete,
    VoidStringFunction onFieldSubmitted,
    TextStyle? style = const TextStyle(
      fontSize: _textFontSize,
      color: _textColor,
    ),
    InputDecoration inputDecoration = const InputDecoration(
      labelText: _labelText,
      hintText: _hintText,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      prefixIcon: _prefixIcon,
      suffixIcon: _suffixIcon,
      contentPadding: _edgeInsetsGeometry,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: _textColor,
          style: BorderStyle.solid,
          width: 1.5,
        ),
      ),
    ),
    TextEditingController? controller,
    String? initialValue,
    FocusNode? focusNode,
    TextInputType? keyboardType,
    TextCapitalization textCapitalization = TextCapitalization.none,
    TextInputAction? textInputAction,
    StrutStyle? strutStyle,
    TextDirection? textDirection,
    TextAlign textAlign = TextAlign.start,
    TextAlignVertical? textAlignVertical,
    bool autofocus = false,
    bool readOnly = false,
    ToolbarOptions? toolbarOptions,
    bool? showCursor,
    String obscuringCharacter = '•',
    bool obscureText = false,
    bool autocorrect = true,
    SmartDashesType? smartDashesType,
    SmartQuotesType? smartQuotesType,
    bool enableSuggestions = true,
    MaxLengthEnforcement? maxLengthEnforcement,
    int? maxLines = 1,
    int? minLines,
    bool expands = false,
    int? maxLength,
    List<TextInputFormatter>? inputFormatters,
    bool? enabled,
    double cursorWidth = 2.0,
    double? cursorHeight,
    Radius? cursorRadius,
    Color? cursorColor,
    Brightness? keyboardAppearance,
    EdgeInsets scrollPadding = const EdgeInsets.all(20.0),
    bool enableInteractiveSelection = true,
    TextSelectionControls? selectionControls,
    Widget? Function(BuildContext,
            {required int currentLength,
            required bool isFocused,
            required int? maxLength})?
        buildCounter,
    ScrollPhysics? scrollPhysics,
    Iterable<String>? autofillHints,
    AutovalidateMode? autovalidateMode,
    ScrollController? scrollController,
    String? restorationId,
    bool enableIMEPersonalizedLearning = true,
  }) =>
      TextFormField(
        validator: valid,
        onChanged: onChanged,
        onSaved: onSaved,
        onTap: onTap,
        onEditingComplete: onEditingComplete,
        onFieldSubmitted: onFieldSubmitted,
        style: style,
        decoration: inputDecoration,
        key: key,
        autocorrect: autocorrect,
        autofillHints: autofillHints,
        autofocus: autofocus,
        autovalidateMode: autovalidateMode,
        buildCounter: buildCounter,
        controller: controller,
        cursorColor: cursorColor,
        cursorHeight: cursorHeight,
        cursorRadius: cursorRadius,
        cursorWidth: cursorWidth,
        enableIMEPersonalizedLearning: enableIMEPersonalizedLearning,
        enableInteractiveSelection: enableInteractiveSelection,
        enableSuggestions: enableSuggestions,
        enabled: enabled,
        expands: expands,
        focusNode: focusNode,
        initialValue: initialValue,
        inputFormatters: const [],
        keyboardAppearance: keyboardAppearance,
        keyboardType: keyboardType,
        maxLength: maxLength,
        maxLengthEnforcement: maxLengthEnforcement,
        maxLines: maxLines,
        minLines: minLines,
        obscureText: obscureText,
        obscuringCharacter: obscuringCharacter,
        readOnly: readOnly,
        restorationId: restorationId,
        scrollController: scrollController,
        scrollPadding: scrollPadding,
        scrollPhysics: scrollPhysics,
        selectionControls: selectionControls,
        showCursor: showCursor,
        smartDashesType: smartDashesType,
        smartQuotesType: smartQuotesType,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textAlignVertical: textAlignVertical,
        textCapitalization: textCapitalization,
        textDirection: textDirection,
        textInputAction: textInputAction,
        toolbarOptions: toolbarOptions,
      );
}
