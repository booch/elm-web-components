# Elm Web Components

This is just a record of my experimentation writing Web Components in Elm.

To compile the Elm code:
~~~ shell
elm-make src/*.elm --output=elm.js
~~~

Web Components won't work with `file:` URLs, so you'll have to start a web server:
~~~ shell
python2 -m SimpleHTTPServer 8008
~~~

Then browse the site at http://localhost:8008/.
