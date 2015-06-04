<%def name="progress(label, id, percentage, value, threshold=10)">
<span class="progress${ ' low' if percentage < threshold else ''}" data-threshold="${threshold}" id="${id}">
    <span class="label">${label}</span>
    <span class="value">${value}</span>
    <span class="indicator">
        <span class="bar" style="width: ${percentage}%"></span>
    </span>
</span>
</%def>
