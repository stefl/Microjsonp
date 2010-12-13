Let's say you want to consume microformats from an external website using javascript on your own website. Browser security prohibits it.

Send a GET request of this format to this little web service:

    http://microjsonp.heroku.com/parse?callback=abc123&url=http://microformats.org/

And you will receive all microformats contained at that url, parsed and converted to jsonp.

Security
--------

Be aware that there are security risks in using JSONP, and you should read up on them to make sure your approach is valid.

Supported microformats
----------------------

Microformat parsing is done using the Mofo gem, so we can support the following:

* adr
* geo
* hcalendar
* hcard
* hentry
* hfeed
* hresume
* hreview
* rel
* xfn
* xoxo

To install and use for your own purposes
----------------------------------------

    gem install mofo sinatra haml sinatra-jsonp json
    git clone git@github.com:stefl/Microjsonp.git
    cd Microjsonp
    rackup

Licence
-------  
  
[Released under the CC0 licence](http://creativecommons.org/publicdomain/zero/1.0/)
