# ultimate_containers
Your ultimate layouting widget is `C`. Container, Text, Column, Row and styling in one.

## Benefits
- Style is decoupled from Widget
- Style can be reused
- Responsiveness
- Style properties are similar to CSS
- More units than just px

## Features
## Usage
- [X] Style abstraction `FSS`
- [X] Multiple styles per widget
- [X] Inherit text styles from parent
## Units 
- [X] Unit `px` -> `Px` `px`
- [X] Unit `%` -> `PercentV` `PercentH` `percentV` `percentH`
- [X] Unit `em` -> `Em` `em`
- [X] Unit `rem` -> `Rem` `rem`
- [X] Unit `vw` -> `Vw` `vw` (`50vw` -> `Vw(0.5)`).
- [X] Unit `vh` -> `Vh` `vh`(`50vh` -> `Vh(0.5)`).
- [X] Unit `vmin` -> `Vmin` `vmin`(`50vmin` -> `Vmin(0.5)`).
- [X] Unit `vmax` -> `Vmax` `vmax`(`50vmax` -> `Vmax(0.5)`).
- [ ] Unit `fr` -> `Fr` `fr`
- [ ] Unit `cm` -> `Cm` `cm`
- [ ] Unit `mm` -> `Mm` `mm`
- [ ] Unit `in` -> `In` `in`
- [ ] Unit `pt` -> `Pt` `pt`
- [ ] Unit `pc` -> `Pc` `pc`
- [ ] Unit `ex` -> `Ex` `ex`
- [ ] Unit `ch` -> `Ch` `ch`
- [X] String unit parser `u('50px')` -> `Px(50)`
- [X] Basic unit arithmetic

## Responsiveness
- [X] Responisve breakpoints `Breakpoints`, `Breakpoint`

## CSS Properties
### Text
- [X] Export & Import `TextStyle` to be compatible with Flutter `Text` Widget
- [X] `color` -> `color`
- [X] `font-size` -> `fontSize`
- [X] `font-weight` -> `fontWeight`
- [X] `font-style` -> `fontStyle`
- [X] `letter-spacing` -> `letterSpacing`
- [X] `word-spacing` -> `wordSpacing`
- [X] `font-family` -> `fontFamily`
- [ ] `text-align` -> `textAlign`
- [X] `font-family` -> `fontFamily`
- [X] `text-decoration` -> `textDecoration`
- [X] `text-shadow` -> `textShadowColor` `textShadowBlur` `textShadowOffset`

### Contaeiner
- [X] Widget `C` is like `Container` but with FSS support
- [X] Support multiple FSS styles per widget (like CSS classes)
- [X] `width` -> `width`
- [X] `height` -> `height`
- [X] `margin` -> `margin` `m`
- [X] `margin-top` -> `marginTop` `mt`
- [X] `margin-right` -> `marginRight` `mr`
- [X] `margin-bottom` -> `marginBottom` `mb`
- [X] `margin-left` -> `marginLeft` `ml`
- [X] `margin-vertical` -> `marginVertical` `mv`
- [X] `margin-horizontal` -> `marginHorizontal` `mh`
- [X] `padding` -> `padding` `p`
- [X] `padding-top` -> `paddingTop` `pt`
- [X] `padding-right` -> `paddingRight` `pr`
- [X] `padding-bottom` -> `paddingBottom` `pb`
- [X] `padding-left` -> `paddingLeft` `pl`
- [X] `padding-vertical` -> `paddingVertical` `pv`
- [X] `padding-horizontal` -> `paddingHorizontal` `ph`
- [X] `border-radius-top-left` -> `borderRadiusTopLeft` `brtl`
- [X] `border-radius-top-right` -> `borderRadiusTopRight` `brtr`
- [X] `border-radius-bottom-left` -> `borderRadiusBottomLeft` `brbl`
- [X] `border-radius-bottom-right` -> `borderRadiusBottomRight` `brbr`
- [X] `border-radius-top` -> `borderRadiusTop` `brt`
- [X] `border-radius-right` -> `borderRadiusRight` `brr`
- [X] `border-radius-bottom` -> `borderRadiusBottom` `brb`
- [X] `border-radius-left` -> `borderRadiusLeft` `brl`
- [X] `border-radius` -> `borderRadius` `br`
- [X] `border-width` -> `borderWidth` `bw`
- [X] `border-style` -> `borderStyle` `bs`
- [X] `border-color` -> `borderColor` `bc`
- [X] inline, middle, outlin border -> `borderAlign`
- [X] `background-color` -> `backgroundColor` `bg`
- [ ] `aspect-ratio` -> `aspectRatio`
- [ ] `max-height` -> `maxHeight`
- [ ] `max-width` -> `maxWidth`
- [ ] `min-height` -> `minHeight`
- [ ] `min-width` -> `minWidth`
### Flex
- [X] `flex-direction` -> `axis`
- [ ] `flex-wrap` -> `flexWrap`
- [ ] `flex-flow` -> `flexFlow`
- [X] `justify-content` -> `alignHorizontal`
- [X] `align-items` -> `alignVertical`
- [ ] `gap` -> `gap`
- [ ] `gap-vertical` -> `gapVertical`
- [ ] `gap-horizontal` -> `gapHorizontal`

### Grid
- [ ] Unit `fr` -> `Fr`

## Stack
- [ ] Stack functionality
## Icon
- [ ] Icon Widget `I`
