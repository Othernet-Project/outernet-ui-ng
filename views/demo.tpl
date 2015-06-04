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

<%def name="cell(text, cls='col')">
    <div class="${cls}">
        <div class="content">
        <code>${text}</code>
        </div>
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

        <div class="section forms">
            <div class="section-title">
                <h2>Forms</h2>
            </div>

            <div class="fields">
                <div class="fields-demo col">
                    <p class="field form-input">
                        <label for="input1">Normal</label>
                        <input id="input1" type="text" placeholder="Placeholder">
                        <span class="field-help">This is some help text</span>
                    </p>
                    <p class="field form-input-value">
                        <label for="input2">Normal (with value)</label>
                        <input id="input2" type="text" value="Value">
                    </p>
                    <p class="field form-input-positive">
                        <label for="input3">Positive</label>
                        <input id="input3" type="text" value="Correct value" class="positive">
                    </p>
                    <p class="field form-input-negative">
                        <label for="input4">Negative</label>
                        <input id="input4" type="text" value="Wrong value" class="negative">
                        <span class="field-error">Please fix this</span>
                    </p>
                    <p class="field form-input-required">
                        <label for="input5" class="required">Required</label>
                        <input id="input5" type="text" placeholder="This field is required">
                    </p>
                </div>
                <div class="fields-complex col">
                    <p class="field form-select">
                        <label for="input6">Select normal</label>
                        <select id="input6">
                            <option>Please select something</option>
                            <option value="1">Option 1</option>
                            <option value="2">Option 2</option>
                            <option value="3">Option 3</option>
                        </select>
                    </p>
                    <p class="field form-select">
                        <label for="input7">Select negative</label>
                        <select id="input7" class="negative">
                            <option>Please select something</option>
                            <option value="1">Option 1</option>
                            <option value="2">Option 2</option>
                            <option value="3">Option 3</option>
                        </select>
                        <span class="field-error">Please fix this</span>
                    </p>

                    <p class="field form-checkbox">
                        <label>Checkbox</label>
                        <input type="checkbox" value="checkme" id="input8">
                        <label for="input8" class="checkbox">
                            Checkbox 1
                        </label>
                        <input type="checkbox" value="checkme" id="input9" checked>
                        <label for="input9" class="checkbox">
                            Checkbox 2
                        </label>
                    </p>

                    <div class="field textarea">
                        <label for="input10">Textarea</label>
                        <textarea id="input10" placeholder="Placeholder"></textarea>
                        <p class="field-help">Textarea can be resized vertically</p>
                    </div>
                </div>
            </div>

            <div class="fields">
                <div class="fields-demo col">
                    <p class="field form-input-email">
                        <label for="input11">Email</label>
                        <input id="input11" type="email" placeholder="me@you.com">
                    </p>
                    <p class="field form-input-file">
                        <label for="input12">File</label>
                        <input id="input12" type="file" placeholder="me@you.com">
                    </p>
                </div>
            </div>

            <div class="docs">
                <h3>Normal field</h3>
                <p>
                Fields should be wrapped in a block element and the element 
                should use the <code>input-container</code> mixin which sets 
                the input container's bottom margin.
                </p>
                <p>
                Normal fields do not require any special markup. The normal
                and active states are handled using standard CSS2 and CSS3
                rules, and placeholder text is styled using browser's
                native styling.
                </p>
                <p>
                To add help text to a field, use an element with 
                <code>.field-help</code> class.
                </p>
                <h3>Positive field</h3>
                <p>
                Validated field are marked as positive. This is done by 
                adding <code>.positive</code> class to the input element.
                </p>
                <h3>Netagive field</h3>
                <p>
                Fields with errors are marked as negative. This is done by
                adding <code>.negative</code> class to the input element.
                </p>
                <p>
                Additionally, an element with class 
                <code>.field-error</code> can be inserted after the input
                element, which contains error message for the field.
                </p>
            </div>
        </div>

        <div class="section grid">
            <div class="section-title">
            <h2>Grid system</h2>
            </div>

            <div class="grid-container">
                <div class="grid-row cols1">
                    ${cell('@include col1;')}
                </div>

                <div class="grid-row cols2">
                    ${cell('@include col2;')}
                    ${cell('@include col2;')}
                </div>

                <div class="grid-row cols4">
                    ${cell('@include col4;')}
                    ${cell('@include col4;')}
                    ${cell('@include col4;')}
                    ${cell('@include col4;')}
                </div>
                
                <div class="grid-row cols6">
                    ${cell('@include col6;')}
                    ${cell('@include col6;')}
                    ${cell('@include col6;')}
                    ${cell('@include col6;')}
                    ${cell('@include col6;')}
                    ${cell('@include col6;')}
                </div>

                <div class="grid-row cols-mixed">
                    ${cell('@include col4;', cls='col col4')}
                    ${cell('@include col6;', cls='col col6')}
                    ${cell('@include col6;', cls='col col6')}
                    ${cell('@include col6;', cls='col col6')}
                    ${cell('@include col4;', cls='col col4')}
                </div>

                <div class="grid-row cols-nested">
                    ${cell('@include col6(2);', cls='col col-left')}
                    <div class="col col-right">
                        <div class="content">
                            <div class="nested-row">
                                ${cell('@include col1;', cls='col')}
                            </div>
                            <div class="nested-row">
                                ${cell('@include col1;', cls='col')}
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="docs">
                <h3>Using the grid</h3>
                <p>
                Outernet UI NG uses a flexible grid with 12 columns and 20px 
                guttter. Each cell (called column for some reason) has its own 
                padding of 10px on all sides. Neightboring paddings add up to
                the 20px gutters. Outermost columns end up with 10px gutter, so
                a container with 10px padding is used to compensate.
                </p>
                <p>
                The row elements contain one or more columns, and they only 
                serve the purpose of clearing the columns' floats. A row 
                element should include a <code>row</code> mixin.
                </p>
                <p>
                The outermost element is called the grid container, and is 
                styled using the <code>grid-container</code> mixin.
                </p>
                <p>
                Columns are styled using <code>col1</code>, <code>col2</code>,
                <code>col4</code> and <code>col6</code> mixins. The numbers
                represent the number of subdivisions (e.g., <code>col4</code>
                is a column that represents 1/4th of the container's width). 
                Each column mixin takes an optional argument that specifies 
                the number of subdivisions to use. For instance, 
                <code>col4(3)</code> gives us a 3/4-width column.
                </p>
                <p>
                Grid containers can be freely nested.
                </p>
            </div>
        </div>

        <div class="section buttons">
            <div class="section-title">
            <h2>Buttons</h2>

            <h3>Normal size</h3>

            <div class="buttons-demo">
                <div class="buttons-normal">
                    <p>
                        <button disabled>Disabled</button>  
                    </p>
                    <p>
                        <button>Normal</button>  
                    </p>
                    <p>
                        <button class="cta">CTA</button>  
                    </p>
                    <p>
                        <button class="delete">Delete</button>  
                    </p>
                    <p>
                        <button class="confirm">Confirm</button>  
                    </p>
                </div>

                <div class="buttons-reverse">
                    <p>
                        <button class="reverse" disabled>Disabled</button>  
                    </p>
                    <p>
                        <button class="reverse" >Normal</button>  
                    </p>
                    <p>
                        <button class="reverse cta">CTA</button>  
                    </p>
                    <p>
                        <button class="reverse delete">Delete</button>  
                    </p>
                    <p>
                        <button class="reverse confirm">Confirm</button>  
                    </p>
                </div>
            </div>

            <h3>Large</h3>

            <div class="buttons-demo-large">
                <div class="buttons-normal">
                    <p>
                        <button class="large" disabled>Disabled</button>  
                    </p>
                    <p>
                        <button class="large" >Normal</button>  
                    </p>
                    <p>
                        <button class="large cta">CTA</button>  
                    </p>
                    <p>
                        <button class="large delete">Delete</button>  
                    </p>
                    <p>
                        <button class="large confirm">Confirm</button>  
                    </p>
                </div>

                <div class="buttons-reverse">
                    <p>
                        <button class="large reverse" disabled>Disabled</button>  
                    </p>
                    <p>
                        <button class="large reverse">Normal</button>  
                    </p>
                    <p>
                        <button class="large reverse cta">CTA</button>  
                    </p>
                    <p>
                        <button class="large revese delete">Delete</button>  
                    </p>
                    <p>
                        <button class="large reverse confirm">Confirm</button>  
                    </p>
                </div>
            </div>
        </div>

        <script src="/static/js/jquery.js"></script>
    </body>
</html>
