window.MapAnimation =
  init: ->
    scrollorama = $.scrollorama({
      blocks: '.scrollblock'
    })

    scrollorama.animate('#pin-tip', {
      duration: 1,
      delay: 0,
      property: 'opacity',
      start: 0,
      end: 1,
      pin: true
    })

    scrollorama.animate('#unsmiley', {
      duration: 1,
      delay: 100;
      property: 'opacity',
      start: 0,
      end: 1,
      pin: true
    })

    scrollorama.animate('#pin-tip', {
      duration: 1,
      delay: 200,
      property: 'z-index',
      start: 20,
      end: 0,
      pin: true
    })

    scrollorama.animate('#unsmiley-tip', {
      duration: 1,
      delay: 200;
      property: 'opacity',
      start: 0,
      end: 1,
      pin: true
    })

    scrollorama.animate('#trackr-one', {
      duration: 1,
      delay: 400,
      property: 'opacity',
      start: 0,
      end: 1,
      pin: true
    })

    scrollorama.animate('#trackr-two', {
      duration: 1,
      delay: 600;
      property: 'opacity',
      start: 0,
      end: 1,
      pin: true
    })

    scrollorama.animate('#trackr-three', {
      duration: 1,
      delay: 800;
      property: 'opacity',
      start: 0,
      end: 1,
      pin: true
    })

    scrollorama.animate('#unsmiley-tip', {
      duration: 1,
      delay: 800;
      property: 'z-index',
      start: 20,
      end: 0,
      pin: true
    })

    scrollorama.animate('#trackr-three-tip', {
      duration: 1,
      delay: 800;
      property: 'opacity',
      start: 0,
      end: 1,
      pin: true
    })

    scrollorama.animate('#trackr-four', {
      duration: 1,
      delay: 1000;
      property: 'opacity',
      start: 0,
      end: 1,
      pin: true
    })

    scrollorama.animate('#trackr-five', {
      duration: 1,
      delay: 1200;
      property: 'opacity',
      start: 0,
      end: 1,
      pin: true
    })

    scrollorama.animate('#trackr-three-tip', {
      duration: 1,
      delay: 1200;
      property: 'z-index',
      start: 20,
      end: 0,
      pin: true
    })

    scrollorama.animate('#trackr-five-tip', {
      duration: 1,
      delay: 1200;
      property: 'opacity',
      start: 0,
      end: 1,
      pin: true
    })

    scrollorama.animate('#trackr-five-tip', {
      duration: 1,
      delay: 1400;
      property: 'z-index',
      start: 20,
      end: 0,
      pin: true
    })

    scrollorama.animate('#smiley', {
      duration: 1,
      delay: 1400;
      property: 'opacity',
      start: 0,
      end: 1,
      pin: true
    })


MapAnimation.init() if $('#trackr-map').size() > 0
