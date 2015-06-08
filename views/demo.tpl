<!doctype html>

<%namespace name="widgets" file="_widgets.tpl"/>

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
    <p class="docs">
    ${caller.body()}
    </p>
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
                <h2 id="colors">Color palette</h2>
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

            <div class="docs">
            <h3>Working with colors</h3>
            <p>
            Colors are defined in the <code>outernet/partial/color</code> SASS
            module.
            </p>
            <p>
            There are two ways to refer to colors. One is to use variables that
            are named after colors. For instance, for SKY, we can use
            <code>$sky</code>, or FOREST25 as <code>$forest25</code>.
            </p>
            <p>
            For colors other than greys, we can also use the
            <code>color-by-name($name, $variant)</code> SASS mixin. The name is
            the base color name such as <code>sky</code>, <code>sun</code> etc.
            The variant is the variant name such as <code>25d</code> or
            <code>75</code>. The base color is used when variant is
            <code>100</code> or omitted.
            </p>
            </div>
        </div>

        <div class="section typography" id="typography">
            <div class="section-title">
                <h2 id="typography">Typography</h2>
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

            <div class="docs">
                <h3>Working with text styles</h3>

                <p>
                All text on the page uses regular style. 
                </p>

                <p>
                For help text, error messages, and other supplementary text 
                that appears within some other structure (e.g., a form or a 
                table), the sub text style is used. The sub text is selected by
                using the <code>sub()</code> SASS mixin.
                </p>

                <p>
                H0 style is reserved for special cases, and it is not, by
                default, applied to any concrete element. To select this style,
                use the <code>header-0()</code> SASS mixin. Please refer to
                each project's design documentation for correct application. 
                It may be used in cases where H1 should be emphasized more than 
                usual, or for page title where H1 is used for some other 
                purpose (e.g., page title is a a separate element and H1 is the
                site section name).
                </p>

                <p>
                The H1 style is reserved for the top-most heading in the page.
                There is normally only one such heading per page.
                <code>&lt;h1&gt;</code> element uses this style by default.
                </p>

                <p>
                The H2 through H6 heading styles are used by elements
                <code>&lt;h2&gt;</code> through <code>&lt;h6&gt;</code> and
                have the conventional semantic of marking section and 
                subsection headers. Major subdivisions of the page start with
                the H2 heading, and subdivisions within them use H3 and lower.
                </p>

                <p>
                Definiting styles and sizes other than those defined in this
                guide is not allowed.
                </p>
            </div>

            <div class="links">
                <%self:link name="Normal">
                This is the default link. All links that point to other 
                resources should use this style. All <code>&lt;a&gt;</code>
                elements will use this style by default.
                </%self:link>
                <%self:link name="CTA">
                CTA links are used for links that lead to a page that 
                represents entry point to activity funnels. This link style is 
                only used when <code>&lt;a&gt;</code> tag appears inline. In 
                most cases, the CTA button style is preferred. This link style 
                is selected only by using the <code>link-cta()</code> SASS
                mixin as it is not the preferred way of styling CTA links.
                </%self:link>
                <%self:link name="Confirm">
                This style is used for links that lead to a final step in an
                array of actions. The Confirm button style is preferred over
                the link style. To select this link style, use the
                <code>link-confirm()</code> SASS mixin.
                </%self:link>
                <%self:link name="Delete">
                Delete link style is used for links that negate previous
                actions or have permanent destructive effect (e.g., removal of
                persisted data). Delete button style is preferred over this
                link style. This link style can be selected using the
                <code>link-delete()</code> SASS mixin.
                </%self:link>
            </div>
        </div>

        <div class="section forms">
            <div class="section-title">
                <h2 id="forms">Forms</h2>
            </div>

            <h3>Single-input forms</h3>

            <div class="fields single-input">
                <form>
                    <label for="input-single">
                    <span class="icon search">Search:</span>
                    </label>
                    <input type="text" id="input-single" placeholder="Search the library">
                    <button>Search</button>
                </form>
            </div>

            <div class="docs">
                <p>
                <strong>Single input forms</strong> are forms that contain a
                single label, input box and a button. The style is selectable
                only using <code>single-input-form($width, $background,
                $focus)</code> SASS mixin. The <code>$width</code> argument 
                specifies the width of the <em>input</em> (not whole form).
                The <code>$background</code> and <code>$focus</code> are used 
                to specify the background color of the entire form, and input
                when focused, respectively.
                </p>
                <p>
                Because of the need to specify fixed width for the input, the
                single-input forms do not readily adapt to parent element's
                width. To support different screen sizes, we must employ <a
                href="#responsive">media queries</a>. When using media queries,
                the width of the input can be changed using the 
                <code>single-input-form-width($width)</code> SASS mixin. Here 
                is an example for the above form:
                </p>
                <pre><code>form {
  @include single-input-form(600px, $white);
  @include narrower-than(860px) {   @include single-input-form-width(400px); }
  @include narrower-than($medium) { @include single-input-form-width(300px); }
  @include narrower-than($narrow) { @include single-input-form-width(120px); }
}</code></pre>
            </div>

            <h3>Inline single-input form</h3>

            <div class="fields single-input-inline">
                <form>
                    <input type="text" id="input-single" placeholder="keywords...">
                    <button>Search</button>
                </form>
            </div>

            <div class="docs">
                <p>
                <strong>Single-input inline form</strong> is a variant of the
                single-input form, which uses smaller-sized input and button
                to address space-constrained situations such as usage within a 
                table. This style is selected in a similar way as regular 
                single-input form, by augmenting the
                <code>single-input-form()</code> SASS mixin with a 
                <code>single-input-inline()</code> SASS mixin.
                </p>
            </div>

            <h3>Form controls</h3>

            <ul class="form-errors">
                <li>Form-wide errors must appear above the form</li>
                <li>
                In case of submission via AJAX, page must be scrolled up
                to this box if the form does not fit the screenful.
                </li>
            </ul>

            <div class="fields">
                <div class="fields-demo col">
                    <p class="field form-input">
                        <label for="input1">Normal</label>
                        <input id="input1" type="text" placeholder="Placeholder">
                        <span class="field-help">This is help text. Normal field style is applied to inputs with <code>type="text"</code> and similar (email, etc). Note that inputs without a type will <em>not</em> be styled.</span>
                    </p>
                    <p class="field form-input-value" id="test-field">
                        <label for="input2">Normal (with value)</label>
                        <input id="input2" type="text" value="Value">
                    </p>
                    <p class="field form-input-positive">
                        <label for="input3">Positive</label>
                        <input id="input3" type="text" value="Correct value" class="positive">
                        <span class="field-help">When using client-side validation, correct field must be marked as validated and correct.</span>
                    </p>
                    <p class="field form-input-negative" id="negative-field">
                        <label for="input4">Negative</label>
                        <input id="input4" type="text" value="Wrong value" class="negative">
                        <span class="field-error">This is a field error message. Field can only have one error message. When using client-side validation, field errors must be cleared when user edits the field.</span>
                    </p>
                    <p class="field form-input-required">
                        <label for="input5" class="required">Required</label>
                        <input id="input5" type="text" placeholder="This field is required">
                    </p>
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

                    <p class="field form-input-custom-icon">
                        <label for="input11">Custom icon</label>
                        <input id="input11" type="password">
                        <span class="field-help">Custom icons can be given to any text input by using the <code>input-icon($name)</code> SASS mixin. Icons must be placed in <code>$IMAGE_DIR/1x/$name</code> and <code>$IMAGE_DIR/2x/$name</code> in 100% and 200% size respectively. Icon file must be 25x25px at 100% size.</span>
                    </p>

                    <p class="field form-input-file">
                        <label for="input12">File</label>
                        <input id="input12" type="file">
                    </p>
                </div>
                <div class="field-clear-demo col">
                    <p>
                    <button id="clear-negative-error" class="secondary">Clear negative field error</button>
                    <span class="docs">
                    Field errors can be cleared using JavaScript. The jQuery plugin that deals with forms is defined in <code>widgets/forms.js</code>. Include this module and call <code>$.fn.clearError()</code> method on the field's container element.
                    </span>
                    </p>
                    <p>
                    <button id="clear-errors" class="secondary">Clear all errors</button>
                    <span class="docs">
                    The <code>$.fn.clearError()</code> can also be called on the form element (or any element that contains all fields) to clear errors for all fields.
                    </span>
                    </p>
                    <p>
                    <button id="add-error" class="secondary">Add error to a field</button>
                    <span class="docs">
                    The <code>widgets/forms.js</code> module also defines a <code>$.fn.markError(message)</code> method which marks a field as contianing an error. Calling this method on a field's container element also clears any existing error messages. Message can contain arbitrary HTML, and it is the caller's responsibility to prevent XSS attack vectors.
                    </span>
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

        <div class="section tables">
            <div class="section-title">
            <h2 id="tables">Tables</h2>
            </div>

            <h3>Regular table</h3>

            <div class="tables-demo table-normal-demo">
                <table>
                    <thead>
                        <tr>
                            <th>Column 1</th>
                            <th>Column 2</th>
                            <th>Embedded form</th>
                            <th>Embedded link</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Data 1</td>
                            <td>
                            <p>Data 2</p>
                            </td>
                            <td>
                                <form>
                                <input type="text" placeholder="Some text">
                                <button>Click me</button>
                                </form>
                                <button class="delete">Delete</button>
                            </td>
                            <td>
                                <a href="javascript:void(0)" class="table-link">Link</a>
                            </td>
                        </tr>
                        <tr>
                            <td>Data 1</td>
                            <td>
                            <p>Data 2</p>
                            </td>
                            <td>
                                <form>
                                <input type="text" placeholder="Some text">
                                <button>Click me</button>
                                </form>
                                <button class="delete">Delete</button>
                            </td>
                            <td>
                                <a href="javascript:void(0)" class="table-link">Link</a>
                            </td>
                        </tr>
                        <tr>
                            <td>Data 1</td>
                            <td>
                            <p>Data 2</p>
                            </td>
                            <td>No form</td>
                            <td>No link</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="docs">
                <p>
                Tables require no special markup to select the styling shown in
                this guide. Please note, though, that tables have no built-in
                responsive features. Look at <a href="#responsive">Designing for
                mobile screens</a> section for more information.
                </p>

                <p>
                Tables using the base Outernet UI NG stylesheet are laid out 
                using <code>table-layout: fixed</code>. This means that the 
                table columns' width is calculated using the widths of the 
                very first row in the table. This increases the rendering 
                performance (layout is not recalculated for every row 
                downloaded), but requires the developer to fine-tune the 
                widths of the columns in order to set the correct column width
                for all rows. The helper SASS mixin 
                <code>table-col-width($col, $width)</code> can be used for 
                this purpose. This mixin is included in the table element
                or one of the parents.
                </p>

                <pre><code>table {
  @include table-col-width(1, 200px);  // 1st column is 200px wide
  @include table-col-width(3, 20%);  // 3rd column is 20% wide
}</code></pre>

                <p>
                We can also manually set the width by giving the first row's
                <code>&lt;th&gt;</code> or <code>&lt;td&gt;</code> elements a
                specific width (it has to be the first row). Usually we give
                those cells a <code>class</code> attribute in order to select
                them.
                </p>
            </div>

            <h3>Flat table</h3>

            <div class="table-demo table-flat-demo">
                <table>
                        <thead>
                            <tr>
                            <th>Column 1</th>
                            <th>Column 2</th>
                            <th>Embedded form</th>
                            <th>Embedded link</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Data 1</td>
                            <td>
                            <p>Data 2</p>
                            </td>
                            <td>
                                <form>
                                <input type="text" placeholder="Some text">
                                <button>Click me</button>
                                </form>
                                <button class="delete">Delete</button>
                            </td>
                            <td>
                                <a href="javascript:void(0)" class="table-link">Link</a>
                            </td>
                        </tr>
                        <tr>
                            <td>Data 1</td>
                            <td>
                            <p>Data 2</p>
                            </td>
                            <td>
                                <form>
                                <input type="text" placeholder="Some text">
                                <button>Click me</button>
                                </form>
                                <button class="delete">Delete</button>
                            </td>
                            <td>
                                <a href="javascript:void(0)" class="table-link">Link</a>
                            </td>
                        </tr>
                        <tr>
                            <td>Data 1</td>
                            <td>
                            <p>Data 2</p>
                            </td>
                            <td>No form</td>
                            <td>No link</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="docs">
                <p>
                Flat tables use the normal table HTML markup, but lay the
                table cells out as block elements. This style is selected 
                using <code>table-flat()</code> SASS mixin. This style can be
                useful for layout out tables for smaller screens.
                </p>
            </div>
        </div>

        <div class="section buttons">
            <div class="section-title">
                <h2 id="buttons">Buttons</h2>
            </div>

            <p class="docs">
            Buttons styling is applied to all <code>&lt;button&gt;</code>
            elements, as well as inline elements that have <code>button</code>
            class.
            </p>


            <h3 class="subsection">Normal</h3>

            <div class="buttons-demo">
                <div class="buttons-normal">
                    <p>
                    <button>Action</button>
                    <button class="secondary">Secondary</button>
                    <span class="docs">
                    Action button initiates a new action. This button is used
                    to signify <strong>user actions that have no special
                    emphasis</strong>.  When multiple buttons are present in a
                    button group, then the secondary style is used. Action
                    button is the default style for all buttons. Secondary
                    style is selected using <code>secondary</code> class.
                    </span>
                    </p>

                    <p>
                    <button class="delete">Delete</button>
                    <button class="delete secondary">Delete secondary</button>
                    <span class="docs">
                    Delete buttons are used for action that <strong>negate
                    previous actions or have irreversible destructive
                    effect</strong> (e.g., removal of persisted data). In a
                    button group where delete action is not the most
                    significant action, secondary style is used. This also
                    applies to cases where there are multiple delete actions in
                    a single group. Delete style is selected using
                    <code>delete</code> class, and its secondary counterpart is
                    selected using <code>delete secondary</code> class.
                    </span>
                    </p>

                    <p>
                    <button class="confirm">Confirm</button>
                    <span class="docs">
                    Confirm buttons are used to <strong>confirm execution of
                    previously selected actions or dismiss confirmation
                    messages</strong>. There can only ever be one confirmation
                    button in a button group, and the secondary style is
                    therefore never used. Confirm button style is selected by
                    using <code>confirm</code> class.
                    </span>
                    </p>

                    <p>
                    <button class="cta">CTA</button>
                    <button class="cta secondary">CTA secondary</button>
                    <span class="docs">
                    CTA buttons are used to call user's attention to actions
                    that reveal new sections of a site, usually containing an
                    <strong>entry point to activity funnels</strong>. In case
                    there are more than one CTA buttons in a button group, only
                    one can be significant, and others must use the secondary
                    style.  CTA buttons must not appear in the same group as
                    other button types. CTA button style is selected using
                    <code>cta</code> class, and its secondary counterpart by
                    using <code>cta secondary</code> class.
                    </span>
                    </p>

                    <p>
                    <button disabled>Disabled</button>
                    <button class="secondary" disabled>Disabled secondary</button>
                    <span class="docs">
                    Buttons that <strong>cannot be used at a given
                    moment</strong> (e.g., conditions for performing the action
                    are not met) must always be disabled. In case of
                    <code>&lt;button&gt;</code> elements, adding the
                    <code>disabled</code> attribute selects this style. In case
                    of other elements, adding a <code>disabled</code> class has
                    the same <em>visual</em> effect, but the functionality of
                    the element (e.g., click event handling) must be handled
                    in backend or frontend code.
                    </span>
                    </p>
                </div>
            </div>

            <h3 class="subsection">Small</h3>
        
            <div class="buttons-demo">
                <div class="buttons-small">
                    <p>
                    <button class="small">Action</button>
                    <button class="small secondary">Action secondary</button>
                    <span class="docs">
                    Small buttons are used as part of more complex widgets 
                    <strong>where space constraints do not allow placement of 
                    normal-sized buttons</strong>. This includes use of buttons
                    within table cells. The button styling is selected the same
                    way as with normal-sized buttons with addition of
                    <code>small</code> class. Within tables, this style is 
                    automatically selected. <strong>CTA buttons should never be
                    used in the small variant.</strong>
                    </span>
                    </p>
                    <p>
                    <button class="delete small">Delete</button>
                    <button class="delete small secondary">Delete secondary</button>
                    </p>
                    <p>
                    <button class="confirm small">Confirm</button>
                    </p>
                    <p>
                    <button class="small" disabled>Disabled</button>
                    <button class="small secondary" disabled>Disabled secondary</button>
                    </p>
                </div>
            </div>

            <h3 class="subsection">Reverse</h3>

            <div class="buttons-demo">
                <div class="buttons-reverse">
                    <p>
                    <button class="cta reverse">CTA</button>
                    <button class="cta reverse secondary">Secondary</button>
                    <span class="docs">
                    Reverse video buttons are typically used on surfaces that
                    are delibrately designed to stand out from the rest of the
                    page (hero boxes, banners, etc). These areas may contain
                    only CTA buttons. The secondary style is used if there is
                    more than one button in the same button group. Reverse
                    video CTA button is selected by using <code>cta
                    reverse</code> class, and the secondary style by using
                    <code>cta reverse secondary</code> style.
                    </span>
                    </p>
                </div>
            </div>
        </div>
    </div>

    <div class="section widgets">
        <div class="section-title">
            <h2 id="widgets">Widgets</h2>
        </div>

            <div class="loader-demo widget">
                ${widgets.progress('Progress', 30, threshold=30, id='progress')}
                <div class="docs">
                    <p>
                    The progress widget is deifined in <code>_widgets.tpl</code>
                    Mako module. This module is imported using the <a
                    href="http://docs.makotemplates.org/en/latest/defs.html#calling-defs-from-other-files">namespaces</a>:
                    </p> 
                    <pre><code>&lt;%namespace name="widgets" file="relative/path/to/_widgets.tpl"/&gt;</code></pre>
                    <p>
                    The <code>progress(label, percentage, value=None,
                    threshold=10, id=None)</code> def is used to render the 
                    progress widget.
                    </p>
                    <p>
                    <code>label</code> is rquired, and is shown above the bar,
                    to the left. <code>percentage</code> defines the portion of
                    the bar that will be filled in. It must be an integer
                    between 0 and 100 inclusive. Third argument is the
                    <code>value</code>. If it is passed, it will be shown above
                    the bar on the right. Otherwise, the value is calculated 
                    from the percentage by appending the percent symbol (%) to
                    the <code>percentage</code> value. The
                    <code>threshold</code> is the integer that represents the
                    percentage below which the bar has 'low value' styling 
                    (default styling is for the bar to turn SUN). If 
                    <code>id</code> is specified, the widget's outernet element
                    will have an <code>id</code> attribute.
                    </p>
                    <p>
                    Progress widget has a static value when rendered. This
                    value can be updated using the jQuery plugin defined in the
                    <code>widgets/progress.js</code> module:
                    </p>
                    <pre><code>var prog = $('#my-progress').progress();
prog.updateLabel('New label');
prog.updateValue(20, '-30db');</code></pre>
                </div>
            </div>

            <div class="accordion-demo widget">
                <div class="accordion" id="accordion">
                    <%widgets:accordion>
                        <h3>Using the accordion widget</h3>
                        <div>
                            <p>
                            Accordion sections are enclosed in specially
                            crafted markup that can be generated using the
                            <code>_widgets.tpl</code> Mako module. This module
                            is imported using the <a
                            href="http://docs.makotemplates.org/en/latest/defs.html#calling-defs-from-other-files">namespaces</a>:
                            </p>
                            <pre><code>&lt;%namespace name="widgets" file="relative/path/to/_widgets.tpl"/&gt;</code></pre>
                            <p>
                            The accordion section widget is then created using
                            the following pattern:
                            </p>
                            <pre><code>&lt;%widgets:accordion&gt
    &lt;element&gt;Header element&lt;/element&gt;
    &lt;element&gt;content...&lt;/element&gt;
&lt;/%widgets:accordion&gt;</code></pre>
                            <p>
                            Important thing to note is that there should be 
                            exactly two elements inside the widget. The first
                            one will be used as a header and should not contain
                            nested block elements.
                            </p>
                            <p>
                            Second element should be a block element which may
                            or may not contain arbitrary HTML structures.
                            </p>
                            <p>
                            JavaScript that makes the accordion widget work
                            is defined in the <code>widgets/accordion.js</code>
                            module. When this module is absent, or JavaScript
                            is disabled, the accordion only has basic styling
                            that delineates the sections.
                            </p>
                        </div>
                    </%widgets:accordion>
                    <%widgets:accordion expanded="${True}">
                        <h3>Expanded by default</h3>
                        <div>
                            <p>
                            This section is expanded by default. This is
                            achieved by using the
                            <code>expanded="${'${True}'}"</code> argument.
                            </p>
                        </div>
                    </%widgets:accordion>
                    <%widgets:accordion collapsible="${False}">
                        <h3>Non-collapsible</h3>
                        <div>
                            <p>
                            This section is not collapsible. This is achived
                            by using the
                            <code>collapsible="${'${False}'}"</code> argument.
                        </div>
                    </%widgets:accordion>
                    <%widgets:accordion>
                        <h3>Embedded form</h3>
                        <div div="split">
                            <div class="row">
                                <div class="col">
                                    ${widgets.progress('Signal strength', 20)}
                                    <form>
                                        <p>
                                        <select name="lnb">
                                            <option>Select LNB type</option>
                                            <option value="u">Universal LNB</option>
                                            <option value="k">North America Ku-band</option>
                                            <option value="c">C-band</option>
                                        </select>
                                        </p>
                                        <p>
                                        <select name="preset">
                                            <option>Select satellite</option>
                                            <option value="is10">Intelsat 10</option>
                                            <option value="hb13">HotBird 13.0E</option>
                                        </select>
                                        </p>
                                        <p>
                                        <input type="text" placeholder="type in your note">
                                        <p>
                                        <button>Tune in</button>
                                        </p>
                                    </form>
                                </div>
                                <div class="col">
                                    <h4 class="first">Coverage</h4>
                                    <p>
                                    Lorem ipsum dolor sit amet, consectetur
                                    adipiscing elit. Donec a diam lectus. Sed
                                    sit amet ipsum mauris. Maecenas congue
                                    ligula ac quam viverra nec consectetur ante
                                    hendrerit. Donec et mollis dolor. Praesent
                                    et diam eget libero egestas mattis sit amet
                                    vitae augue. Nam tincidunt congue enim, ut
                                    porta lorem lacinia consectetur. Donec ut
                                    libero sed arcu vehicula ultricies a non
                                    tortor. Lorem ipsum dolor sit amet,
                                    consectetur adipiscing elit.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </%widgets:accordion>
                    <%widgets:accordion>
                        <h3>Normal section</h3>
                        <div>
                            <p>
                            This is a normal section.
                            </p>
                        </div>
                    </%widgets:accordion>
                </div>
            </div>
        </div>

        <div class="section grid">
            <div class="section-title">
            <h2 id="grid">Grid system</h2>
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
                guttter. 
                </p>
                <p>
                The grid requires the following elements:
                </p>
                <ul class="bullets">
                    <li>Grid container</li>
                    <li>Rows</li>
                    <li>Columns</li>
                </ul>
                <p>
                The grid <strong>container groups grid rows</strong>. Grid
                <strong>rows group grid columns</strong>. Main purpose of the
                grid container is to regulate the vertical gutter between
                adjacent containers. The grid rows adjusts the clearing below
                the columns so that rows do not step on each other.
                </p>
                <p>
                Grid elements are <strong>styled using mixins only</strong>.
                There are no HTML tags or classes that are used as grid
                elements by default.  This allows for a more semantic and
                flexible layouting.
                </p>
                <p>
                Grid container is styled using <code>grid-container</code> 
                SASS mixin. To apply row styling use <code>row</code> SASS 
                mixin.
                </p>
                <p>
                Columns are applied using several subdivision SASS mixins. The 
                subdivisions are 1/2, 1/3, 1/4, and 1/6. Matching mixins are 
                <code>col2</code>, <code>col3</code>, <code>col4</code>, and
                <code>col6</code>. Each of the mixins accepts a single numeric
                argument that can be used to specify the number of columns to 
                span. For example, <code>col4(3)</code> creates a single column
                spanning 3 columns, each 1/4 width (spanning 9 out of 12
                grid columns).
                </p>
                <p>
                The grid system is <strong>flexible, but not
                responsive</strong>. It is the developer's task to select 
                different layouts depending on screen characteristics. For 
                a typical usage, see the demo's source code, and refer to the
                <a href="#responsive">Designing for mobile screens</a> section.
                </p>
            </div>
        </div>

        <div class="section responsive">
            <div class="section-title">
                <h2 id="responsive">Designing for mobile screens</h2>
            </div>

            <div class="docs">
                <p>
                Outernet UI NG library provides two SASS mixin modules for 
                dealing with mobile screens:
                </p>
                <ul class="bullets">
                    <li><code>outernet/mixins/_media_query.scss</code></li>
                    <li><code>outernet/mixins/_hdpi_images.scss</code></li>
                </ul>

                <h3>Media queries</h3>

                <p>
                The <code>_media_query.scss</code> module defines several
                simple mixins that can be used to <strong>deal with various
                screen widths</strong>. Note that there is no direct support
                for dealing with screen orientation and height. For such
                parameters, you can still write <a
                href="https://developer.mozilla.org/en-US/docs/Web/Guide/CSS/Media_queries?redirectlocale=en-US&redirectslug=CSS%2FMedia_queries">your
                own media queries</a>.
                </p>

                <p>
                The most commonly used mixin is the
                <code>narrower-than($width)</code> mixin. This mixin creates a
                media-query block for screens that are narrower than specified
                width. CSS rules within the block are applied only when the 
                screen width is narrower (less than) specified width. Width is
                specified in CSS units. For example:
                </p>
                <pre><code>@include narrower-than(700px) {
  display: inline-block;
  max-width: 200px; 
}</code></pre>
                <p>
                Opposite of the <code>narrower-than($width)</code> is <code>wider-than($width)</code>, which creates a media-query block for screens that are wider than specified width:
                </p>
                <pre><code>@include wider-than(320px) {
    display: block;
    font-size: 120%;
}</code></pre>
                <p>
                To specify a width that is within a range, we can use <code>width-between($min-width, $max-width)</code> mixin:
                </p>
                <pre><code>@include width-between(320px, 480px) {
    display: block;
    width: 100%;
}</code></pre>
                <h3>Multi-resolution (HDPI) images</h3>

                <p>
                Mobile screens may have high-resolution screens that use twice
                or three times as many pixes for a single CSS pixel. While this
                is not a problem in many scenarios, it can degrade image 
                quality (images are always rendered using physical pixels).
                The <code>_hdpi_images.scss</code> contains a mixin for 
                specifying <strong>background images that switch to
                higher-resolution image automatically</strong> when
                high-resolution display is detected.
                </p>

                <p>
                To specify a background image with hdpi support, use the
                <code>with-hdpi($dir, $image, $include-size: no, $extension:
                png)</code> SASS mixin. Before you can use this mixin, you must lay the image files out using the following pattern:
                </p>

                <pre><code>dirname/
  1x/
    name.ext
  2x/
    name.ext</code></pre>
                
                <p>
                Each image comes in 100% size and 200% size format. The file 
                names for both versions must be the same, and they are placed
                in <code>1x</code> and <code>2x</code> directories 
                respectively. The two directories are then stored in a 
                single directory that we will use to identify their location.
                </p>

                <p>
                The <code>$dir</code> argument points to the directory that
                contains the <code>1x</code> and <code>2x</code> directories.
                The <code>$image</code> arguments points to the image file name
                without extension. If your image does not use a .png extension,
                you can specify the alternative extension using
                <code>$extension</code> argument, otherwise .png is assumed.
                Finally, the element's <code>width</code> and
                <code>height</code> properties can be set to the width and
                height of the image at 100% size if <code>$include-width</code>
                argument is set to <code>yes</code>. The last functionality can 
                be useful for icons, for example.
                </p>

                <p>
                Supposing we have images that are stored in a directory named
                'icons', and one of them is called 'lock.png' (therefore we
                have 'icons/1x/lock.png' and 'icons/2x/lock.png'), we could
                include it as a background image like so:
                </p>

                <pre><code>@include with-hdpi('icons', 'lock');</code></pre>
            </div>
        </div>

        <script src="/static/js/jquery.js"></script>
        <script src="/static/js/widgets/progress.js"></script>
        <script src="/static/js/widgets/accordion.js"></script>
        <script src="/static/js/widgets/forms.js"></script>
        <script type="text/javascript">
            var progress = $('#progress').progress();

            setInterval(updateProgress, 2000);

            function updateProgress() {
                var v = rndval();
                progress.updateValues(v, v + '%');
            }

            function rndval() {
                return Math.floor(Math.random() * 100);
            }
        </script>
        <script type="text/javascript">
            $('#accordion').accordion();
        </script>
        <script type="text/javascript">
            $('#clear-negative-error').on('click', function () {
                $('#negative-field').clearErrors();
            });
            $('#clear-errors').on('click', function () {
                $('.forms').clearErrors();
            });
            $('#add-error').on('click', function () {
                $('#test-field').markError('This is a test error');
            });
        </script>
    </body>
</html>
