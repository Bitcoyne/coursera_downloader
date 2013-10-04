coursera_downloader
===================

What
==========
This script will download all the videos and other course material of any given https://www.coursera.org/ course.

Why
==========
It's good to have the course materials as a reference but who's got time to download them manually.

How
==========

You'll need Nokogiri

    $ gem install nokogiri

Download the source code of the course video lecture page and copy and paste it in video_page.html
eg:
    view-source:https://class.coursera.org/compfinance-005/lecture/index 

Grab your coursera cookies and copy and paste them into cookies.txt. This plugin for Chrome will get your cookies for you - https://chrome.google.com/webstore/detail/cookietxt-export/lopabhfecdfhgogdbojmaicoicjekelh

    $ ruby coursera_downloader.rb

When
==========

This is wokring as of 2013-10-04

Who
==========

Lewis Clayton mail@l.ew.is