ludoplay
========


Experimenting with emberjs on a real thing.
Trying to reprsent a calender with some datas inside each day. Want to navigate between month/years too.

This project also serve as a playground for experimenting/learning various front office technology (see [[pre requist]])

## Pre Requiste

You will need npm up and running and your browser to play/code

Main stack is composed of :

* JS is primarily written with [CoffeeScript](http://coffeescript.org/)
* Use [Bower](http://bower.io/) to manage dependencies (js, css)
* Use [Brunch.io](http://brunch.io/) to scaffold a pretty decent structure for the app. Brunch is also used to compile various things to pre-package the final app.

## Getting started

Clone this repository
Run 

```npm install````

Then start brunch server. Brunch server is a simple web server with WebSocket enabled. It allow live reloading your page each time you save a file in the app.

```brunch server```

## Ideas

use [Bootstrap DatePicker](https://github.com/eternicode/bootstrap-datepicker) in a side bar to allow naigating between month
Reflect the choice on the main calendar view


## Resources

[Emberjs and D3](http://slides.com/samselikoff/ember-and-d3-aug-2013) has some gret ideas representing month as a separte model
