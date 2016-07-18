// AppName Object
var Condo = {

  // Init Function
  init: function() {
    var pattern = Trianglify({
      width: 1200,
      height: 1200,
      x_colors: ['#144052', '#33a1cc', '#144052'],
      y_colors: ['#144052', '#000000']
    });

    var canvas = pattern.canvas();
    var background = document.querySelector('.js-header-background');

    background.appendChild(canvas);
    setTimeout(function() {
      document.body.classList = 'is-trianglified';
    }, 350);
  }
};

// Ready Function
function ready(fn) {
  if (document.readyState != 'loading') {
    fn();
  } else {
    document.addEventListener('DOMContentLoaded', fn);
  }
}

ready(Condo.init());
