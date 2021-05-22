to_h
=====

* ***This repository is archived***
* ***No longer maintained***
* ***All versions have been yanked from https://rubygems.org for releasing valuable namespace for others***

Description
-----------

Add SomePairs#to_h for compatibility with Ruby 2.0+  
http://d.hatena.ne.jp/nagachika/20120416/ruby_trunk_changes_35337_35352 (ja)

Features
--------

Ruby 2.0+

* Hash#to_h
* Struct#to_h
* ENV.to_h
* NilClass#to_h
* OpenStruct#to_h

Ruby 2.1+

* Enumerable#to_h
* Array#to_h

Usage
-----

### Basic

```ruby
require 'to_h'
```

### With OpenStruct

```ruby
require 'ostruct'
require 'ostruct/to_h'
```

Requirements
-------------

* Ruby - [1.8.7 or later](http://travis-ci.org/#!/kachick/to_h)

License
--------

The MIT X11 License  
Copyright (c) 2012 Kenichi Kamiya  
See MIT-LICENSE for further details.
