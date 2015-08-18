## Opal Ruby wrapper of Webix Javascript library

The goal of this project is to wrap the Webix Javascript library with Opal, providing a simple Ruby interface to Webix functionality.

To find out more about Webix, go to http://webix.com.

To find out more about Opal, go to http://opalrb.org

## Installation

Install opal-webix from RubyGems:

```
$ gem install opal-webix
```

Or include it in your Gemfile for Bundler:

```ruby
gem 'opal-webix'
```

## Cloning this repository

```
$ git clone https://github.com/balmoral/opal-webix
```

## Getting Started

### Usage

`opal-webix` can be added to your opal application sources using a standard require:

```ruby
# app/application.rb
require 'opal'
require 'opal-webix'
```

> You need to bring your own `webix.js` and associated files.
> http://webix.com/download/
> and put the file in `app/` or whichever directory you are compiling assets from.

## To do

* Full coverage of Webix API.
* Documentation
* Testing

## Getting involved

To contribute to this project, follow the steps below.

1. Fork the repo ( https://github.com/balmoral/opal-webix/fork )
2. Create your feature branch (`git checkout -b new-branch`)
3. Commit your changes (`git commit -am 'description of commit'`)
4. Push to the branch (`git push origin new-branch`)
5. Create a Pull Request

Contributions welcome.

## Licenses

### Webix
Open source (GNU GPLv3) - cannot be distributed in non-open source projects.
Commercial licences available.
See http://webix.com/ for details.

###opal-webix 
MIT Licence.
See LICENSE.txt


