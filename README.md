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
- [X] Unit `px` -> `Px`
- [X] Unit `%` -> `PercentV` `PercentH`
- [X] Unit `em` -> `Em`
- [X] Unit `rem` -> `Rem`
- [X] Unit `vw` -> `Vw` (`50vw` -> `Vw(0.5)`).
- [X] Unit `vh` -> `Vh` (`50vh` -> `Vh(0.5)`).
- [X] Unit `vmin` -> `Vmin` (`50vmin` -> `Vmin(0.5)`).
- [X] Unit `vmax` -> `Vmax` (`50vmax` -> `Vmax(0.5)`).
- [ ] Unit `fr` -> `Fr`
- [ ] Unit `cm` -> `Cm`
- [ ] Unit `mm` -> `Mm`
- [ ] Unit `in` -> `In`
- [ ] Unit `pt` -> `Pt`
- [ ] Unit `pc` -> `Pc`
- [ ] Unit `ex` -> `Ex`
- [ ] Unit `ch` -> `Ch`

## Responsiveness
- [ ] Responisve breakpoints

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

### Box
- [X] Widget `Box` is like `Container` but with FSS support
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
- [ ] `border-width` -> `borderWidth` `bw`
- [ ] `border-style` -> `borderStyle` `bs`
- [ ] `border-color` -> `borderColor` `bc`
- [X] `background-color` -> `backgroundColor` `bg`
- [ ] `aspect-ratio` -> `aspectRatio`

### Flex
- [ ] Widget `Flex` `FlexRow` `FlexColumn` `FlexRowReverse` `FlexColumnReverse`
- [ ] `flex-direction` -> `flexDirection`
- [ ] `flex-wrap` -> `flexWrap`
- [ ] `flex-flow` -> `flexFlow`
- [ ] `justify-content` -> `justifyContent`
- [ ] `align-items` -> `alignItems`
- [ ] `align-content` -> `alignContent`
- [ ] `gap` -> `gap`
- [ ] `gap-vertical` -> `gapVertical`
- [ ] `gap-horizontal` -> `gapHorizontal`

### Grid
- [ ] Widget `Grid`
- [ ] Unit `fr` -> `Fr`