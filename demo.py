#!/usr/bin/python

import os
import shutil

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


def dump():
    rendered = bottle.mako_template('demo')
    rendered = rendered.replace('/static/', 'static/')
    with open('index.html', 'w') as f:
        f.write(rendered)


def main():
    import argparse
    parser = argparse.ArgumentParser('start demo server')
    parser.add_argument('--public', '-P', help='serve publicly',
                        action='store_true')
    parser.add_argument('--port', '-p', help='port number', type=int,
                        default=8080)
    parser.add_argument('--dump', '-D', help='dump static version',
                        action='store_true')
    args = parser.parse_args()

    if args.dump:
        dump()
        return

    if args.public:
        host = '0.0.0.0'
    else:
        host = '127.0.0.1'

    bottle.run(host=host,
               port=args.port,
               debug=True)


if __name__ == '__main__':
    main()
