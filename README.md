**Work in progress**.
**Work in progress**.
**Work in progress**.

## Synopsis

This repository is a gem-like Jekyll application for http://www.ruby-lang.org.

This is the "official" port, created by current contributors to ruby-lang.org (that is, the Visual Identity Team (VIT) as some used to call us). Obviousy, other projects are welcomed, but eventually, there should be only one central ("official") website for Ruby, along other community-based resources such as RubySource, Ruby Inside… Eventually, Matz will decide if people are not able to agree.

## Running the application localy

``` bash
    git clone git@github.com:rubylang/ruby-lang.org.git
    cd ruby-lang.org
```

Required dependencies:

* thor
* rack
* jekyll
* rdiscount
* RedCloth
* haml
* compass
* rubypants
* pygments.rb

There is a `.rvmrc`, but feel free to discard it.

Once everything is installed (`gem install …`):

``` bash
    thor admin:preview
    firefox http://localhost:4000
```

## Infos

This application is based around a Jekyll instance, but makes use of several other libraries and hand-made tools, to ease maintenance and deploy.
Goals:

* maintenance of ruby-lang.org through Github (this repos or another when it's ready)
* page editions through pull requests, anyone is invited (whohoo!)
* (hopefully) easy translations synchronization thx to the git workflow
* (hopefully) a brand new content, hopefully maintained up-to-date thx to the git workflow
* a set of tools for maintainers (deploy etc.)

What's been done so far:

* Thor tasks
* The Jekyll application (templates, basic structure, helpers) – with a little design refresh based on Octopress excellent theme
* A few pages (check under `en` and `fr` subdirectories), but more is coming really soon
* Many discussions on vit-core@ruby-lang.org about what to do next

What's missing so far:

* Most of the content => porting to markdown
* The credits page is important, asap!
* The actual content overhaul (re-thinking everything)
* Deploy tasks
* Asking Matz
* Production-ready checks (links, urls, content missing…) and deployment

## Creating pages and news items

There are command line tasks for creating new pages and news items. Using those tasks prevents you from messing with the metadata, and ensure a few checks.

``` bash
    thor new:page 'en/my/page' 'optionnal title'
    thor new:post 'Breaking news !'
```

Type in `thor list` to see all available tasks. We may turn this into a `rubylang` script.
