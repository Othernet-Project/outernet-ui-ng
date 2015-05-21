import bottle
from bottle import Bottle, run, static_file
from bottle import mako_template as template

bottle.debug(True)
bottle.TEMPLATES.clear()

app = Bottle()

@app.route('/')
def index():
    return template('testing/templates/index.mako')


@app.route('/working-test')
def working_test():
    return template('testing/templates/test.mako')


@app.route('/button-test')
def button_test():
    return template('testing/templates/button-test.mako')


@app.route('/hyperlink-test')
def hyperlink_test():
    return template('testing/templates/hyperlink-test.mako')


@app.route('/font-test')
def font_test():
    return template('testing/templates/font-test.mako')


@app.route('/color-test')
def color_test():
    return template('testing/templates/color-test.mako')


@app.route('/static/:path#.+#', name='static')
def static(path):
    return static_file(path, root='testing/static')


run(app, reloader=True, host='localhost', port=8080)

