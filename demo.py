#!/usr/bin/python

import os

import bottle


SCRIPTDIR = os.path.dirname(__file__)
STATICDIR = os.path.join(SCRIPTDIR, 'static')


@bottle.get('/')
@bottle.mako_view('demo')
def demo():
    return {}


@bottle.get('/static/<path:path>')
def static(path):
    return bottle.static_file(path, root=STATICDIR)


bottle.run(host='localhost',
           port=8080,
           debug=True)
