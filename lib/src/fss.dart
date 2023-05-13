import 'package:flutter/material.dart';
import 'package:flutter_stylesheets/src/fss_provider.dart';
import 'package:flutter_stylesheets/src/units/px.dart';
import 'package:flutter_stylesheets/src/units/unit.dart';
import 'package:flutter_stylesheets/src/units/unit_context.dart';

class FSS {
  // Text styles
  Color? color; // color
  Unit? fontSize; // font-size
  FontWeight? fontWeight; // font-weight
  FontStyle? fontStyle;
  Unit? letterSpacing; // letter-spacing
  Unit? wordSpacing; // word-spacing
  // FontFeatures
  // FontVariations
  // TextDecoration
  // textDecoration Color
  // TextDecorationStyle
  // textDecoration thickness double
  // ?? debug label
  String? fontFamily; // font-family
  TextOverflow? textOverflow; // text-overflow
  FSS setTextStyle(TextStyle style) {
    color = style.color;
    fontSize = Px(style.fontSize ?? 16);
    fontWeight = style.fontWeight;
    fontStyle = style.fontStyle;
    letterSpacing = Px(style.letterSpacing ?? 0);
    wordSpacing = Px(style.wordSpacing ?? 0);
    fontFamily = style.fontFamily;
    return this;
  }

  // Text shadow
  Color? textShadowColor;
  Offset? textShadowOffset;
  Unit? textShadowBlur;
  FSS textShadow(Shadow shadow) {
    textShadowColor = shadow.color;
    textShadowOffset = shadow.offset;
    textShadowBlur = Px(shadow.blurRadius);
    return this;
  }

  // Box styles
  Unit? width;
  Unit? height;
  Unit? paddingTop;
  Unit? paddingBottom;
  Unit? paddingLeft;
  Unit? paddingRight;
  Unit? marginTop;
  Unit? marginBottom;
  Unit? marginLeft;
  Unit? marginRight;
  Color? backgroundColor;
  double? opacity; // opacity
  Unit? borderRadiusTopLeft;
  Unit? borderRadiusTopRight;
  Unit? borderRadiusBottomLeft;
  Unit? borderRadiusBottomRight;
  Color? borderColor;
  Unit? borderWidth;

  // Box Shadow
  Offset? shadowOffset;
  Unit? shadowBlur;
  Color? shadowColor;
  FSS setShadow(Shadow shadow) {
    shadowOffset = shadow.offset;
    shadowBlur = Px(shadow.blurRadius);
    shadowColor = shadow.color;
    return this;
  }

  // Getters
  TextStyle textStyle(UnitContext uctx) => TextStyle(
        color: color,
        fontSize: fontSize?.px(uctx) ?? FSS.basic().fontSize?.px(uctx),
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing?.px(uctx),
        wordSpacing: wordSpacing?.px(uctx),
        fontFamily: fontFamily,
      );
  EdgeInsetsGeometry paddingEdgeInset(UnitContext uctx) => EdgeInsets.only(
        left: paddingLeft?.px(uctx) ?? 0,
        right: paddingRight?.px(uctx) ?? 0,
        top: paddingTop?.px(uctx) ?? 0,
        bottom: paddingBottom?.px(uctx) ?? 0,
      );
  EdgeInsetsGeometry marginEdgeInset(UnitContext uctx) => EdgeInsets.only(
        left: marginLeft?.px(uctx) ?? 0,
        right: marginRight?.px(uctx) ?? 0,
        top: marginTop?.px(uctx) ?? 0,
        bottom: marginBottom?.px(uctx) ?? 0,
      );
  Shadow shadow(UnitContext uctx) => Shadow(
        color: shadowColor ?? Colors.transparent,
        offset: shadowOffset ?? Offset.zero,
        blurRadius: shadowBlur?.px(uctx) ?? 0,
      );

  // Inheritable styles
  FSS inhertiable() {
    return FSS(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      fontFamily: fontFamily,
      textShadowColor: textShadowColor,
      textShadowOffset: textShadowOffset,
      textShadowBlur: textShadowBlur,
    );
  }

  // Convert to Map
  Map<String, dynamic> toMap() {
    return {
      if (color != null) 'color': color,
      if (fontSize != null) 'fontSize': fontSize,
      if (fontWeight != null) 'fontWeight': fontWeight,
      if (fontStyle != null) 'fontStyle': fontStyle,
      if (letterSpacing != null) 'letterSpacing': letterSpacing,
      if (wordSpacing != null) 'wordSpacing': wordSpacing,
      if (fontFamily != null) 'fontFamily': fontFamily,
      if (textShadowColor != null) 'textShadowColor': textShadowColor,
      if (textShadowOffset != null) 'textShadowOffset': textShadowOffset,
      if (textShadowBlur != null) 'textShadowBlur': textShadowBlur,
      if (width != null) 'width': width,
      if (height != null) 'height': height,
      if (paddingTop != null) 'paddingTop': paddingTop,
      if (paddingBottom != null) 'paddingBottom': paddingBottom,
      if (paddingLeft != null) 'paddingLeft': paddingLeft,
      if (paddingRight != null) 'paddingRight': paddingRight,
      if (marginTop != null) 'marginTop': marginTop,
      if (marginBottom != null) 'marginBottom': marginBottom,
      if (marginLeft != null) 'marginLeft': marginLeft,
      if (marginRight != null) 'marginRight': marginRight,
      if (backgroundColor != null) 'backgroundColor': backgroundColor,
      if (opacity != null) 'opacity': opacity,
      if (borderRadiusTopLeft != null) 'borderRadiusTopLeft': borderRadiusTopLeft,
      if (borderRadiusTopRight != null) 'borderRadiusTopRight': borderRadiusTopRight,
      if (borderRadiusBottomLeft != null) 'borderRadiusButtomLeft': borderRadiusBottomLeft,
      if (borderRadiusBottomRight != null) 'borderRadiusBottomRight': borderRadiusBottomRight,
    };
  }

  FSS({
    /// text-color
    Color? color,

    /// font-size
    this.fontSize,

    /// font-weight
    this.fontWeight,

    /// font-style
    this.fontStyle,

    /// letter-spacing
    this.letterSpacing,

    /// word-spacing
    this.wordSpacing,

    /// font-family
    this.fontFamily,

    /// text-shadow (color)
    this.textShadowColor,

    /// text-shadow (offset)
    this.textShadowOffset,

    /// text-shadow (blur)
    this.textShadowBlur,

    /// width
    this.width,

    /// height
    this.height,

    /// padding-top
    Unit? paddingTop,

    /// padding-bottom
    Unit? paddingBottom,

    /// padding-left
    Unit? paddingLeft,

    /// padding-right
    Unit? paddingRight,

    /// margin-top
    Unit? marginTop,

    /// margin-bottom
    Unit? marginBottom,

    /// margin-left
    Unit? marginLeft,

    /// margin-right
    Unit? marginRight,

    /// background-color
    this.backgroundColor,

    /// opacity
    this.opacity,

    /// border-radius-top-left
    Unit? borderRadiusTopLeft,

    /// border-radius-top-right
    Unit? borderRadiusTopRight,

    /// border-radius-bottom-left
    Unit? borderRadiusBottomLeft,

    /// border-radius-bottom-right
    Unit? borderRadiusBottomRight,
    // === Text Abbrevations ===
    /// color
    Color? c,

    // === Padding Abbrevations ===
    /// padding-top
    Unit? pt,

    /// padding-bottom
    Unit? pb,

    /// padding-left
    Unit? pl,

    /// padding-right
    Unit? pr,

    /// padding-horizontal
    Unit? paddingHorizontal,

    /// padding-horizontal
    Unit? px,

    /// padding-vertical
    Unit? paddingVertical,

    /// padding-vertical
    Unit? py,

    /// padding
    Unit? padding,

    /// padding
    Unit? p,

    // === Margin Abbrevations ===
    /// margin-top
    Unit? mt,

    /// margin-bottom
    Unit? mb,

    /// margin-left
    Unit? ml,

    /// margin-right
    Unit? mr,

    /// margin-horizontal
    Unit? marginHorizontal,

    /// margin-horizontal
    Unit? mx,

    /// margin-vertical
    Unit? marginVertical,

    /// margin-vertical
    Unit? my,

    /// margin
    Unit? margin,

    /// margin
    Unit? m,

    // === Border Radius Abbrevations ===
    /// border-radius-top-left
    Unit? brtl,

    /// border-radius-top-right
    Unit? brtr,

    /// border-radius-bottom-left
    Unit? brbl,

    /// border-radius-bottom-right
    Unit? brbr,

    /// border-radius-top
    Unit? borderRadiusTop,

    /// border-radius-top
    Unit? brt,

    /// border-radius-bottom
    Unit? borderRadiusBottom,

    /// border-radius-bottom
    Unit? brb,

    /// border-radius-left
    Unit? borderRadiusLeft,

    /// border-radius-left
    Unit? brl,

    /// border-radius-right
    Unit? borderRadiusRight,

    /// border-radius-right
    Unit? brr,

    /// border-radius
    Unit? borderRadius,

    /// border-radius
    Unit? br,

    // === Box Style Abbrevations ===
    /// width
    Unit? w,

    /// height
    Unit? h,

    /// opacity
    double? o,

    /// background-color
    Color? bg,
  }) {
    // Text Abbrevations
    this.color = color ?? c;

    // Padding Abbrevations
    this.paddingTop = padding ?? p ?? paddingVertical ?? py ?? paddingTop ?? pt;
    this.paddingBottom = padding ?? p ?? paddingVertical ?? py ?? paddingBottom ?? pb;
    this.paddingLeft = padding ?? p ?? paddingHorizontal ?? px ?? paddingLeft ?? pl;
    this.paddingRight = padding ?? p ?? paddingHorizontal ?? px ?? paddingRight ?? pr;

    // Margin Abbrevations
    this.marginTop = margin ?? m ?? marginVertical ?? my ?? marginTop ?? mt;
    this.marginBottom = margin ?? m ?? marginVertical ?? my ?? marginBottom ?? mb;
    this.marginLeft = margin ?? m ?? marginHorizontal ?? mx ?? marginLeft ?? ml;
    this.marginRight = margin ?? m ?? marginHorizontal ?? mx ?? marginRight ?? mr;

    // Border Radius Abbrevations
    this.borderRadiusTopLeft = borderRadius ?? br ?? borderRadiusTop ?? brt ?? borderRadiusTopLeft ?? brtl;
    this.borderRadiusTopRight = borderRadius ?? br ?? borderRadiusTop ?? brt ?? borderRadiusTopRight ?? brtr;
    this.borderRadiusBottomLeft = borderRadius ?? br ?? borderRadiusBottom ?? brb ?? borderRadiusBottomLeft ?? brbl;
    this.borderRadiusBottomRight = borderRadius ?? br ?? borderRadiusBottom ?? brb ?? borderRadiusBottomRight ?? brbr;

    // Box Style Abbrevations
    this.width = width ?? w;
    this.height = height ?? h;
    this.opacity = opacity ?? o;
    this.backgroundColor = backgroundColor ?? bg;
  }

  FSS merge(FSS? other) {
    return other != null
        ? FSS(
            color: other.color ?? color,
            fontSize: other.fontSize ?? fontSize,
            fontWeight: other.fontWeight ?? fontWeight,
            fontStyle: other.fontStyle ?? fontStyle,
            letterSpacing: other.letterSpacing ?? letterSpacing,
            wordSpacing: other.wordSpacing ?? wordSpacing,
            fontFamily: other.fontFamily ?? fontFamily,
            textShadowColor: other.textShadowColor ?? textShadowColor,
            textShadowOffset: other.textShadowOffset ?? textShadowOffset,
            textShadowBlur: other.textShadowBlur ?? textShadowBlur,
            width: other.width ?? width,
            height: other.height ?? height,
            paddingTop: other.paddingTop ?? paddingTop,
            paddingBottom: other.paddingBottom ?? paddingBottom,
            paddingLeft: other.paddingLeft ?? paddingLeft,
            paddingRight: other.paddingRight ?? paddingRight,
            marginTop: other.marginTop ?? marginTop,
            marginBottom: other.marginBottom ?? marginBottom,
            marginLeft: other.marginLeft ?? marginLeft,
            marginRight: other.marginRight ?? marginRight,
            backgroundColor: other.backgroundColor ?? backgroundColor,
            opacity: other.opacity ?? opacity,
            borderRadiusTopLeft: other.borderRadiusTopLeft ?? borderRadiusTopLeft,
            borderRadiusTopRight: other.borderRadiusTopRight ?? borderRadiusTopRight,
            borderRadiusBottomLeft: other.borderRadiusBottomLeft ?? borderRadiusBottomLeft,
            borderRadiusBottomRight: other.borderRadiusBottomRight ?? borderRadiusBottomRight,
          )
        : this;
  }

  FSS mergeMulti(List<FSS?>? others) => others?.fold(this, (previousValue, element) => previousValue?.merge(element)) ?? this;

  static FSS of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<FSSProvider>()?.fss ?? FSS.basic();
  }

  static FSS ofUctx(UnitContext uctx) {
    return uctx.context?.dependOnInheritedWidgetOfExactType<FSSProvider>()?.fss ?? FSS.basic();
  } 

  FSS.basic() {
    fontSize = Px(16);
    color = Colors.black;
    fontWeight = FontWeight.normal;
    fontStyle = FontStyle.normal;
    backgroundColor = Colors.transparent;
  }
}
