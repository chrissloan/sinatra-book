Sinatra Facebook App
====================

Down and dirty setup for a Facebook Application utilizing the awesome Sinatra.

* Built in functionality for a Facebook Like-wall setup

Awesomeness Utilized
--------------------

* Sinatra [http://www.sinatrarb.com/](http://www.sinatrarb.com/)
* Coffeescript [http://coffeescript.org/](http://coffeescript.org/)
* Compass [http://compass-style.org/](http://compass-style.org/)
* Haml [http://haml-lang.com/](http://haml-lang.com/)


Getting Started
---------------

It's as simple as editing the items found in the app.rb file. Make sure to change and edit the Global Variables for the Facebook items, Google Analytic ID and also the application.

*Starting up the app*

After you have edited the app.rb file with appropriate variable replacement, you can start up the app.

1. $ > bundle (if you haven't already done so to get the gems)
2. $ > compass watch  (watch your stylesheets change)
3. $ > shotgun app.rb (if using compass watch, you will need to do this in another terminal session)
4. $ > http://127.0.0.1:9393/


