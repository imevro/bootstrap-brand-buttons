'use strict';

angular.module("BBDocsApp").controller("ListCtrl", function($scope) {
  $scope.brands = [
    {
      name: "Services",
      list: [
        "amazon",
        "delicious",
        "digg",
        "disqus",
        "eventbrite",
        "eventful",
        "intensedebate",
        "lanyrd",
        "pinboard",
        "songkick",
        "stumbleupon",
        "gmail",
        "google",
        "evernote",
        "grooveshark",
        "instapaper",
        "itunes",
        "opentable",
        "logmein",
        "ninetyninedesigns",
        "paypal",
        "pocket",
        "scribd",
        "spotify",
        "statusnet",
        "stripe",
        "yahoo",
        "yelp",
      ],
    },
    {
      name: "Content sites",
      list: [
        "wikipedia",
        "wordpress",
        "ycombinator",
      ]
    },
    {
      name: "Misc",
      list: [
        "bitcoin",
        "cloudapp",
        "creativecommons",
        "dropbox",
        "html5",
        "ie",
        "podcast",
        "rss",
        "skype",
        "steam",
        "windows",
      ],
    },
    {
      name: "Stores",
      list: [
        "android",
        "appstore",
        "googleplay",
        "macstore",
      ],
    },
    {
      name: "Socials",
      list: [
        "appnet",
        "blogger",
        "bitbucket",
        "dribbble",
        "facebook",
        "flattr",
        "flickr",
        "foursquare",
        "github",
        "googleplus",
        "gowalla",
        "instagram",
        "klout",
        "lastfm",
        "linkedin",
        "meetup",
        "myspace",
        "pinterest",
        "quora",
        "reddit",
        "plurk",
        "smashing",
        "soundcloud",
        "stackoverflow",
        "tumblr",
        "twitter",
        "viadeo",
        "vimeo",
        "vk",
        "weibo",
        "xing",
        "youtube",
      ]
    },
    {
      name: "Games",
      list: [
        "csgo",
        "dota2",
        "gm",
        "lol",
        "minecraft",
        "tf2",
        "quake",
        "wot"
      ]
    }
  ];

  console.log( $scope.brands );
});