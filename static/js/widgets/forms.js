(function (window, $) {

  $.fn.clearErrors = function () {
    var el = $(this);
    el.find('input, select, textarea').removeClass('negative');
    el.find('.field-error').remove();
    return el;
  };

  $.fn.markError = function (message) {
    var el = $(this).clearErrors();
    var input = el.find('input, select, textarea');
    var error = $('<span>');
    error.html(message);
    error.addClass('field-error');
    input.addClass('negative');
    el.append(error);
  }

}(this, this.jQuery));
