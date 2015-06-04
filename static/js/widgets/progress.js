(function (window, $) {
  $.fn.progress = function() {
    var el = $(this);
    var label = el.find('.label');
    var value = el.find('.value');
    var bar = el.find('.bar');
    var threshold = parseInt(el.data('threshold'));

    if (isNaN(threshold)) {
      threshold = 0;
    }

    return {
      updateValues: function(p, v) {
        value.text(v);
        bar.width(p + '%');
        el.toggleClass('low', p < threshold);
      },

      updateLabel: function(s) {
        label.text(s); 
      }
    };
  };
}(this, this.jQuery));
