Let's say you want to consume microformats from an external website using javascript on your own website. Browser security prohibits it.

Send a GET request of this format to this little web service:

http://microjsonp.heroku.com/parse?callback=abc123&url=http://microformats.org/

And you will receive all microformats contained at that url, parsed and converted to jsonp.

Released under the CC0 licence.

To install and use for your own purposes:

  gem install mofo sinatra haml sinatra-jsonp json
  git clone git@github.com:stefl/Microjsonp.git
  cd Microjsonp
  rackup