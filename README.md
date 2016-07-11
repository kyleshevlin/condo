# Condo

**Because you don't always need a mansion-sized Sass grid library.**

With no offense intended towards the incredible, robust and flexible [Susy](https://github.com/oddbird/susy) (I personally love it), I bring you Condo, a tiny Sass grid library.

The philosophy of Susy seems to be to provide the developer with a broad palette of tools and almost limitless flexibility in creating a grid system. Condo's philosophy is to create a limited tool set designed to accomplish a discrete set of grid layouts.

Condo utilizes similar variables, functions and mixins to create grid systems as Susy. You will recognize `span()`, `container()`, and `gutters()` from Susy, but not all the features you're used to will be there. In the right context, this is a very good thing.

For example, Condo does *not* support right to left layouts, only left to right ones. My apologies to any developer out there who needs right to left support, but I never have. Rather than working this into Condo, wasting compilation time on checking a setting that I would never use, I recommend forking Condo, flipping the output and naming it "Odnoc". Give me some credit if you're feeling charitable.

You'll find other, similar restrictions throughout the documentation.

## Installation

Condo is available as a Bower package and a Ruby gem.

Bower:

```
$ bower install condo
```

Ruby Gem: *Sorry, I couldn't get the same name for the gem*

```ruby
gem 'condo_grids'
```

## Documentation

I will write up the full documentation here soon. For now, open the documentation found in the `docs/` directory. Thanks [Sassdoc](http://sassdoc.com/)!

