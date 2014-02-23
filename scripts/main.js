var array = { socials: [ "amazon", "android", "appnet", "bitcoin", "bitbucket", "blogger", "cloudapp", "creativecommons", "delicious", "digg", "disqus", "dribbble", "dropbox", "eventbrite", "eventful", "evernote", "facebook", "flattr", "flickr", "foursquare", "github", "gmail", "google", "googleplay", "googleplus", "gowalla", "grooveshark", "html5", "ie", "instapaper", "instagram", "intensedebate", "itunes", "klout", "lanyrd", "lastfm", "linkedin", "logmein", "macstore", "meetup", "myspace", "ninetyninedesigns", "opentable", "paypal", "pinboard", "pinterest", "pocket", "plurk", "podcast", "quora", "reddit", "rss", "scribd", "skype", "smashing", "songkick", "soundcloud", "spotify", "stackoverflow", "statusnet", "steam", "stripe", "stumbleupon", "tumblr", "twitter", "viadeo", "vimeo", "vk", "weibo", "wikipedia", "windows", "wordpress", "xing", "yahoo", "ycombinator", "yelp", "youtube" ] },
    output = Mustache.render("{{#socials}} <div class=\"col-sm-6 col-md-3 btn-demo\"><button class=\"btn btn-block btn-lg btn-{{.}}\">.btn-{{.}}</button></div>{{/socials}}", array);
document.getElementById("test").innerHTML = output;

function animate(elem,style,unit,from,to,time,prop) {
  if( !elem) return;
  var start = new Date().getTime(),
      timer = setInterval(function() {
        var step = Math.min(1,(new Date().getTime()-start)/time);
        if (prop) {
          elem[style] = (from+step*(to-from))+unit;
        } else {
          elem.style[style] = (from+step*(to-from))+unit;
        }
        if( step == 1) clearInterval(timer);
      },25);
  elem.style[style] = from+unit;
}

var els = document.getElementsByClassName("call-to-action");
for (var i = 0; i < els.length; i++) {
  els[i].onclick = function() {
    animate(document.body, "scrollTop", "", 0, document.getElementById("features").offsetTop, 800, true);
  }
};