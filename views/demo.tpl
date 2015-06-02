<!doctype html>

<%def name="swatch(name)">
<li>
    <span class="swatch ${name}"></span>
    <span class="swatch-label${ ' main' if '100' in name or name == 'base' else ''}">${name[:-3] if '100' in name else name}</span>
</li>
</%def>

<%def name="link(name)">
<div class="link-type ${name.lower()}">
    <h3>${name} link</h3>
    <p><span href="#foo" class="normal">normal / hover</span></p>
    <p><span href="#foo" class="visited">visited</span></p>
</div>
</%def>


<html>
    <head>
        <title>OUTERNET UI NG demo</title>
        <link rel="stylesheet" href="/static/css/main.css">
    </head>
    </body>
        <header>
            <h1>OUTERNET UI NG</h1>
            <p>
            This page represents the style guide for Outernet UI elements. When 
            implementing interfaces for Outernet products and services, please
            observe the styling and naming conventions found in this guide.
            </p>
            <p>
            Status of this guide is: DRAFT
            </p>
        </header>

        <div class="section colors" id="colors">
            <div class="section-title">
                <h2>Color palette</h2>
            </div>
            
            <div class="swatches">
                % for color in ['sky', 'ocean', 'sun', 'forest', 'fire']:
                    <ul class="col ${color}">
                        ${swatch(color + '25d')}
                        ${swatch(color + '100')}
                        ${swatch(color + '75')}
                        ${swatch(color + '50')}
                        ${swatch(color + '25')}
                        ${swatch(color + '10')}
                        ${swatch(color + '6')}
                    </ul>
                %endfor

                <ul class="col greys">
                    ${swatch('universe')}
                    ${swatch('base')}
                    ${swatch('sub')}
                    ${swatch('iconic')}
                    ${swatch('border')}
                    ${swatch('earth')}
                    ${swatch('input')}
                </ul>
            </div>
        </div>

        <div class="section typography" id="typography">
            <div class="section-title">
                <h2>Typography</h2>
                <p class="note">
                Font face: Arial
                </p>
            </div>

            <div class="headings subsec">
                <div class="heading-0">Heading 0 Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>
                <h1 class="heading-1">Heading 1 Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h1>
                <h2 class="heading-2">Heading 2 Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h2>
                <h3 class="heading-3">Heading 3 Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h3>
                <h4 class="heading-4">Heading 4 Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h4>
                <h5 class="heading-5">Heading 5 Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h5>
                <h6 class="heading-6">Heading 6 Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h6>
            </div>

            <div class="body-text subsec">
                <p class="regular">
                <strong>Regular text</strong> Lorem ipsum dolor sit amet,
                consectetur adipiscing elit. Donec a diam lectus. Sed sit amet
                ipsum mauris. Maecenas congue ligula ac quam viverra nec
                consectetur ante hendrerit. Donec et mollis dolor. Praesent et
                diam eget libero egestas mattis sit amet vitae augue. Nam
                tincidunt congue enim, ut porta lorem lacinia consectetur.
                Donec ut libero sed arcu vehicula ultricies a non tortor. Lorem
                ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut
                gravida lorem. Ut turpis felis, pulvinar a semper sed,
                adipiscing id dolor. Pellentesque auctor nisi id magna
                consequat sagittis. Curabitur dapibus enim sit amet elit
                pharetra tincidunt feugiat nisl imperdiet. Ut convallis libero
                in urna ultrices accumsan. Donec sed odio eros. Donec viverra
                mi quis quam pulvinar at malesuada arcu rhoncus. Cum sociis
                natoque penatibus et magnis dis parturient montes, nascetur
                ridiculus mus. In rutrum accumsan ultricies. Mauris vitae nisi
                at sem facilisis semper ac in est.
                </p>

                <p class="sub">
                <strong>Sub test</strong> Lorem ipsum dolor sit amet,
                consectetur adipiscing elit. Donec a diam lectus. Sed sit amet
                ipsum mauris. Maecenas congue ligula ac quam viverra nec
                consectetur ante hendrerit. Donec et mollis dolor. Praesent et
                diam eget libero egestas mattis sit amet vitae augue. Nam
                tincidunt congue enim, ut porta lorem lacinia consectetur.
                Donec ut libero sed arcu vehicula ultricies a non tortor. Lorem
                ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut
                gravida lorem. Ut turpis felis, pulvinar a semper sed,
                adipiscing id dolor. Pellentesque auctor nisi id magna
                consequat sagittis. Curabitur dapibus enim sit amet elit
                pharetra tincidunt feugiat nisl imperdiet. Ut convallis libero
                in urna ultrices accumsan. Donec sed odio eros. Donec viverra
                mi quis quam pulvinar at malesuada arcu rhoncus. Cum sociis
                natoque penatibus et magnis dis parturient montes, nascetur
                ridiculus mus. In rutrum accumsan ultricies. Mauris vitae nisi
                at sem facilisis semper ac in est.
                </p>
            </div>

            <div class="links">
                ${link('Normal')}
                ${link('CTA')}
                ${link('Confirm')}
                ${link('Delete')}
            </div>
        </div>

        <script src="/static/js/jquery.js"></script>
    </body>
</html>
