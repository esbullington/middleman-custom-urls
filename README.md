# Middleman-Custom-Urls

`middleman-custom-urls` is an extension for the [Middleman](http://middlemanapp.com/) static site generator that allows you to specify a custom URL in the frontmatter.

It's useful to obfuscate URLs for specific pages but keep their file name readable.

## Installation

First, you need to have the `middleman` gem installed and a `middleman` project created. If you don't here's how:

```
$ gem install middleman
$ middlman init my_project
```

Add `gem 'middleman-custom-urls'` to your project's `Gemfile` and run `bundle install`.

## Usage

Activate `middleman-custom-urls` in your `config.rb` with:

```
activate :custom_urls
```

and specify custom url (e. g. in `source/privacy.md`):

```
---
title: Privacy
custom_url: bb60768233974a0c21129810e23f70d8
---
```

This makes the privacy page available under `example.com/bb60768233974a0c21129810e23f70d8.html`.

By the way: `middleman-custom-urls` works with `directory_indexes`, too. Just make sure to `activate :custom_urls` _after_ `activate :directory_indexes`.

## Changelog

See [CHANGELOG.md](CHANGELOG.md).

## License

MIT. See [LICENSE](LICENSE.txt).
