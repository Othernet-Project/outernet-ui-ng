<%def name="progress(label, id, percentage, value, threshold=10)">
<span class="progress${ ' low' if percentage < threshold else ''}" data-threshold="${threshold}" id="${id}">
    <span class="label">${label}</span>
    <span class="value">${value}</span>
    <span class="indicator">
        <span class="bar" style="width: ${percentage}%"></span>
    </span>
</span>
</%def>

<%def name="accordion(id=None, collapsible=True, expanded=False)">
<section class="accordion-section ${'collapsible' if collapsible else 'non-collapsible'} ${'expanded' if (expanded and collapsible) else ''}" ${ 'id="%s"' % id if id else ''}>
    ${caller.body()}
</section>
</%def>
