import 'package:flutter/material.dart';
import 'package:ultimate_containers/ultimate_containers.dart';

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
  FSS mergeTextStyle(TextStyle style) => this.merge(FSS(
        color: style.color,
        fontSize: Px(style.fontSize ?? 16),
        fontWeight: style.fontWeight,
        fontStyle: style.fontStyle,
        letterSpacing: Px(style.letterSpacing ?? 0),
        wordSpacing: Px(style.wordSpacing ?? 0),
        fontFamily: style.fontFamily,
      ));

  // Text shadow
  Color? textShadowColor;
  Offset? textShadowOffset;
  Unit? textShadowBlur;
  FSS mergeTextShadow(Shadow shadow) => this.merge(FSS(
        textShadowColor: shadow.color,
        textShadowOffset: shadow.offset,
        textShadowBlur: Px(shadow.blurRadius),
      ));

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
  double? borderAlign;
  BorderStyle? borderStyle;

  // Box Shadow
  List<UnitBoxShadow>? shadows;
  mergeAddUnitBoxShadow(UnitBoxShadow shadow) => this.merge(FSS(shadows: [...this.shadows ?? [], shadow]));
  mergeAddBoxShadow(BoxShadow shadow) => this.merge(FSS(shadows: [...this.shadows ?? [], UnitBoxShadow.fromBoxShadow(shadow)]));

  // Responsive styles
  FSS? xs;
  FSS? sm;
  FSS? md;
  FSS? lg;
  FSS? xl;
  FSS? xxl;

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

  // Inheritable styles
  FSS inhertiable() => FSS(
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
      if (borderColor != null) 'borderColor': borderColor,
      if (borderWidth != null) 'borderWidth': borderWidth,
      if (borderStyle != null) 'borderStyle': borderStyle,
      if (borderAlign != null) 'borderAlign': borderAlign,
      if (shadows != null) 'shadows': shadows,
      if (xs != null) 'xs': xs?.toMap(),
      if (sm != null) 'sm': sm?.toMap(),
      if (md != null) 'md': md?.toMap(),
      if (lg != null) 'lg': lg?.toMap(),
      if (xl != null) 'xl': xl?.toMap(),
      if (xxl != null) 'xxl': xxl?.toMap(),
    };
  }

  FSS({
    /// text-color
    Color? color,

    /// font-size
    Unit? fontSize,

    /// font-weight
    FontWeight? fontWeight,

    /// font-style
    FontStyle? fontStyle,

    /// letter-spacing
    Unit? letterSpacing,

    /// word-spacing
    Unit? wordSpacing,

    /// font-family
    String? fontFamily,

    /// text-overflow
    TextOverflow? textOverflow,

    /// text-shadow (color)
    Color? textShadowColor,

    /// text-shadow (offset)
    Offset? textShadowOffset,

    /// text-shadow (blur)
    Unit? textShadowBlur,

    /// width
    Unit? width,

    /// height
    Unit? height,

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
    Color? backgroundColor,

    /// opacity
    double? opacity,

    /// border-radius-top-left
    Unit? borderRadiusTopLeft,

    /// border-radius-top-right
    Unit? borderRadiusTopRight,

    /// border-radius-bottom-left
    Unit? borderRadiusBottomLeft,

    /// border-radius-bottom-right
    Unit? borderRadiusBottomRight,

    /// border-color
    Color? borderColor,

    /// border-width
    Unit? borderWidth,

    /// border-style
    BorderStyle? borderStyle,

    /// border-align
    /// -1 = inside
    /// 0 = center
    /// 1 = outside
    double? borderAlign,

    /// shadow
    List<UnitBoxShadow>? shadows,

    /// xs
    FSS? xs,

    /// sm
    FSS? sm,

    /// md
    FSS? md,

    /// lg
    FSS? lg,

    /// xl
    FSS? xl,

    /// xxl
    FSS? xxl,

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

    // === Border Abbrevations ===
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

    /// border-color
    Color? bc,

    /// border-width
    Unit? bw,

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
    // Text
    this.color = color ?? c;
    this.fontSize = fontSize;
    this.fontWeight = fontWeight;
    this.fontStyle = fontStyle;
    this.letterSpacing = letterSpacing;
    this.wordSpacing = wordSpacing;
    this.fontFamily = fontFamily;
    this.textOverflow = textOverflow;
    this.textShadowColor = textShadowColor;
    this.textShadowBlur = textShadowBlur;
    this.textShadowOffset = textShadowOffset;

    // Padding
    this.paddingTop = padding ?? p ?? paddingVertical ?? py ?? paddingTop ?? pt;
    this.paddingBottom = padding ?? p ?? paddingVertical ?? py ?? paddingBottom ?? pb;
    this.paddingLeft = padding ?? p ?? paddingHorizontal ?? px ?? paddingLeft ?? pl;
    this.paddingRight = padding ?? p ?? paddingHorizontal ?? px ?? paddingRight ?? pr;

    // Margin
    this.marginTop = margin ?? m ?? marginVertical ?? my ?? marginTop ?? mt;
    this.marginBottom = margin ?? m ?? marginVertical ?? my ?? marginBottom ?? mb;
    this.marginLeft = margin ?? m ?? marginHorizontal ?? mx ?? marginLeft ?? ml;
    this.marginRight = margin ?? m ?? marginHorizontal ?? mx ?? marginRight ?? mr;

    // Border
    this.borderRadiusTopLeft = borderRadius ?? br ?? borderRadiusTop ?? brt ?? borderRadiusTopLeft ?? brtl;
    this.borderRadiusTopRight = borderRadius ?? br ?? borderRadiusTop ?? brt ?? borderRadiusTopRight ?? brtr;
    this.borderRadiusBottomLeft = borderRadius ?? br ?? borderRadiusBottom ?? brb ?? borderRadiusBottomLeft ?? brbl;
    this.borderRadiusBottomRight = borderRadius ?? br ?? borderRadiusBottom ?? brb ?? borderRadiusBottomRight ?? brbr;
    this.borderColor = borderColor ?? bc;
    this.borderWidth = borderWidth ?? bw;
    this.borderStyle = borderStyle;
    this.borderAlign = borderAlign;

    // Box Style
    this.width = width ?? w;
    this.height = height ?? h;
    this.opacity = opacity ?? o;
    this.backgroundColor = backgroundColor ?? bg;
    this.shadows = shadows;

    // Responsive
    this.xs = xs;
    this.sm = sm;
    this.md = md;
    this.lg = lg;
    this.xl = xl;
    this.xxl = xxl;
  }

  static FSS mergeFss(FSS? baseFss, FSS? overwriteFss) {
    if (baseFss == null) return FSS();
    return overwriteFss != null
        ? FSS(
            color: overwriteFss.color ?? baseFss.color,
            fontSize: overwriteFss.fontSize ?? baseFss.fontSize,
            fontWeight: overwriteFss.fontWeight ?? baseFss.fontWeight,
            fontStyle: overwriteFss.fontStyle ?? baseFss.fontStyle,
            letterSpacing: overwriteFss.letterSpacing ?? baseFss.letterSpacing,
            wordSpacing: overwriteFss.wordSpacing ?? baseFss.wordSpacing,
            fontFamily: overwriteFss.fontFamily ?? baseFss.fontFamily,
            textOverflow: overwriteFss.textOverflow ?? baseFss.textOverflow,
            textShadowColor: overwriteFss.textShadowColor ?? baseFss.textShadowColor,
            textShadowOffset: overwriteFss.textShadowOffset ?? baseFss.textShadowOffset,
            textShadowBlur: overwriteFss.textShadowBlur ?? baseFss.textShadowBlur,
            width: overwriteFss.width ?? baseFss.width,
            height: overwriteFss.height ?? baseFss.height,
            paddingTop: overwriteFss.paddingTop ?? baseFss.paddingTop,
            paddingBottom: overwriteFss.paddingBottom ?? baseFss.paddingBottom,
            paddingLeft: overwriteFss.paddingLeft ?? baseFss.paddingLeft,
            paddingRight: overwriteFss.paddingRight ?? baseFss.paddingRight,
            marginTop: overwriteFss.marginTop ?? baseFss.marginTop,
            marginBottom: overwriteFss.marginBottom ?? baseFss.marginBottom,
            marginLeft: overwriteFss.marginLeft ?? baseFss.marginLeft,
            marginRight: overwriteFss.marginRight ?? baseFss.marginRight,
            backgroundColor: overwriteFss.backgroundColor ?? baseFss.backgroundColor,
            opacity: overwriteFss.opacity ?? baseFss.opacity,
            borderRadiusTopLeft: overwriteFss.borderRadiusTopLeft ?? baseFss.borderRadiusTopLeft,
            borderRadiusTopRight: overwriteFss.borderRadiusTopRight ?? baseFss.borderRadiusTopRight,
            borderRadiusBottomLeft: overwriteFss.borderRadiusBottomLeft ?? baseFss.borderRadiusBottomLeft,
            borderRadiusBottomRight: overwriteFss.borderRadiusBottomRight ?? baseFss.borderRadiusBottomRight,
            borderColor: overwriteFss.borderColor ?? baseFss.borderColor,
            borderWidth: overwriteFss.borderWidth ?? baseFss.borderWidth,
            borderStyle: overwriteFss.borderStyle ?? baseFss.borderStyle,
            borderAlign: overwriteFss.borderAlign ?? baseFss.borderAlign,
            shadows: overwriteFss.shadows ?? baseFss.shadows,
            xs: overwriteFss.xs ?? baseFss.xs,
            sm: overwriteFss.sm ?? baseFss.sm,
            md: overwriteFss.md ?? baseFss.md,
            lg: overwriteFss.lg ?? baseFss.lg,
            xl: overwriteFss.xl ?? baseFss.xl,
            xxl: overwriteFss.xxl ?? baseFss.xxl,
          )
        : baseFss;
  }

  FSS merge(FSS overwriteFss) => FSS.mergeFss(this, overwriteFss);

  FSS mergeMulti(List<FSS?>? overwriteFss) =>
      overwriteFss?.fold(
        this,
        (previousValue, element) => element != null
            ? FSS.mergeFss(
                previousValue,
                element,
              )
            : previousValue,
      ) ??
      this;

  FSS dependsOn(FSS baseFss) => FSS.mergeFss(baseFss, this);

  FSS dependsOnMulti(List<FSS?>? baseFss) =>
      baseFss?.fold(
        this,
        (previousValue, element) => element != null
            ? FSS.mergeFss(
                element,
                previousValue,
              )
            : previousValue,
      ) ??
      this;

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

  bool hasBorderRadius() => (borderRadiusTopLeft ?? borderRadiusTopRight ?? borderRadiusBottomLeft ?? borderRadiusBottomRight) != null;

  FSS flattenResponsive(Breakpoint? breakpoint) {
    final responsive = getResponsive(breakpoint);
    if (responsive == null)
      return this;
    else
      return this.merge(responsive.flattenResponsive(breakpoint));
  }

  FSS? getResponsive(Breakpoint? breakpoint) {
    if (breakpoint == Breakpoint.xs) return xs;
    if (breakpoint == Breakpoint.sm) return sm;
    if (breakpoint == Breakpoint.md) return md;
    if (breakpoint == Breakpoint.lg) return lg;
    if (breakpoint == Breakpoint.xl) return xl;
    if (breakpoint == Breakpoint.xxl) return xxl;
    return null;
  }
}
