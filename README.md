# Website

The Port Zero website. Minimalistic, Responsive, using [Hugo](https://gohugo.io/), the static
content generator.

## Using Hugo

You can run the [Hugo](https://gohugo.io/) server locally to build and serve the website on your machine to preview changes.

* [How to install Hugo?](https://gohugo.io/getting-started/installing/)
* How to run Hugo? `hugo server`
* How to create a new post? `hugo new posts/my_post.md`

## Build

### Continuous Deployment

The website is automatically updated when changes get pushed to master.

* CircleCI
  * [Deployment with SSH](https://circleci.com/docs/2.0/deployment-integrations/#ssh)
  * [Adding an SSH Key to CircleCI](https://circleci.com/docs/2.0/add-ssh-key/)

## Fonts

### Fira Sans

The font we use is ["Fira Sans"](https://github.com/mozilla/Fira). The [License](themes/portzero/static/font/LICENSE) is located in the directory `static/fonts`.

### Icons

The custom icon font is generated with [Fontello](http://fontello.com/).

#### Modifying the icons font

1. [Import](https://github.com/fontello/fontello/wiki/How-to-save-and-load-projects) the `themes/portzero/static/font/config.json` file
to [Fontello](http://fontello.com/) (Settings -> Import).
2. Add or remove icons
3. Download webfont and unarchive it archive
4. Run the copy script with the correct path to the downloaded icons webfont folder: `./scripts/copy_icons.sh /Users/.../Downloads/fontello-...`. This copies all the necessary files into the website folder.

## Contributions

If you want to contribute, there are multiple ways to go about things:

Any typos and missing features should be communicated via [issues](/issues/new).
There is no fixed form for these; just tell us what should be fixed!

If you want to contribute the fixes yourself, fork the repository and add a
[Pull Request](/compare). If you have any questions on how to get started,
feel free to post to the Website channel on the internal Port Zero chatroom—which
is only possible if you are part of the company—or contact Veit (@hellerve on
Github and Port Zero’s chat)!

We are grateful for all kinds of contributions and happy to answer any questions!

## License

The theme and styles associated with this website are subject to MIT. The
content and texts themselves are not subject to this license, and you are not
free to reuse them in any context unless given our explicit permission.
