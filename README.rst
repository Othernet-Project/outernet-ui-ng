==============
OUTERNET UI NG
==============

This repository contains the style guide and code assets for the next
generation Outernet UI.

Dependencies
============

To view the demo, you need to install the Python dependencies listed in
``requirements.txt``::

    pip install -r requirements.txt

To work with SCSS code, you will also need Ruby, and several gems::

    [sudo] gem install sass
    [sudo] gem install compass
    [sudo] gem install zen-grids

Optionally, to speed up sprite generation::

    [sudo] gem install oily_png

Running the demo
================

Run the demo by executing::

    python demo.py

Compiling assets
================

To compile the assets (only needed when assets are modified)::

    compass compile -c conf/compass.rb

To watch-compile assets while developing::

    compass watch -c conf/compass.rb
