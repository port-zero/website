# Fonts

## Fira Sans

The font we use is ["Fira Sans"](https://github.com/mozilla/Fira). The [License](themes/portzero/static/font/LICENSE) is located in the directory `static/fonts`.

## Icons

The custom icon font is generated with [Fontello](http://fontello.com/).

### Modifying the icons font

1. [Import](https://github.com/fontello/fontello/wiki/How-to-save-and-load-projects) the `themes/portzero/static/font/config.json` file
to [Fontello](http://fontello.com/) (Settings -> Import).
2. Add or remove icons
3. Download webfont and unarchive the archive
4. Run the copy script with the correct path to the downloaded icons webfont folder: `./scripts/copy_icons.sh /Users/.../Downloads/fontello-...`. This copies all the necessary files into the website folder.
