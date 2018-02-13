An updated version of the font-awesome-rails gem by bokmann See original: https://github.com/bokmann/font-awesome-rails



# font-awesome5-rails

font-awesome-rails provides the
[Font-Awesome 5](https://fontawesome.com/) web fonts and
stylesheets as a Rails engine for use with the asset pipeline.

## Installation

Add this to your Gemfile:

```ruby
gem "font-awesome5-rails"
```

and run `bundle install`.

## Usage

In your `application.css`, include the css file:

```css
/*
 *= require font-awesome5
 */
```
Then restart your webserver if it was previously running.

Congrats! You now have scalable vector icon support. Pick an icon and check out the
[FontAwesome Examples](https://fontawesome.com/how-to-use/web-fonts-with-css).

### Sass Support

If you prefer [SCSS](http://sass-lang.com/documentation/file.SASS_REFERENCE.html), add this to your
`application.css.scss` file:

```scss
@import "font-awesome5";
```

If you use the
[Sass indented syntax](http://sass-lang.com/docs/yardoc/file.INDENTED_SYNTAX.html),
add this to your `application.css.sass` file:

```sass
@import font-awesome5
```

## License

* [Font Awesome Free](https://fontawesome.com/license)

