window.HowItWorksAnimation =
  init: ->
    scrollorama = $.scrollorama({
      blocks: '.scrollblock'
    })

    scrollorama.animate('#camera', {
      duration: 1,
      delay: 100,
      property: 'opacity',
      start: 0.3,
      end: 1,
      pin: true
    })

    scrollorama.animate('#camera-tip', {
      duration: 1,
      delay: 100,
      property: 'opacity',
      start: 0,
      end: 1,
      pin: true
    })

    scrollorama.animate('#progress-1', {
      duration: 1,
      delay: 200,
      property: 'opacity',
      start: 0.3,
      end: 1,
      pin: true
    })

    scrollorama.animate('#progress-2', {
      duration: 1,
      delay: 400,
      property: 'opacity',
      start: 0.3,
      end: 1,
      pin: true
    })

    scrollorama.animate('#progress-3', {
      duration: 1,
      delay: 600,
      property: 'opacity',
      start: 0.3,
      end: 1,
      pin: true
    })

    scrollorama.animate('#progress-4', {
      duration: 1,
      delay: 800,
      property: 'opacity',
      start: 0.3,
      end: 1,
      pin: true
    })

    scrollorama.animate('#progress-5', {
      duration: 1,
      delay: 1000,
      property: 'opacity',
      start: 0.3,
      end: 1,
      pin: true
    })

    scrollorama.animate('#trackr', {
      duration: 1,
      delay: 1200,
      property: 'opacity',
      start: 0.3,
      end: 1,
      pin: true
    })

    scrollorama.animate('#trackr-tip', {
      duration: 1,
      delay: 1200,
      property: 'opacity',
      start: 0,
      end: 1,
      pin: true
    })

    scrollorama.animate('#progress-6', {
      duration: 1,
      delay: 1400,
      property: 'opacity',
      start: 0.3,
      end: 1,
      pin: true
    })

    scrollorama.animate('#progress-7', {
      duration: 1,
      delay: 1600,
      property: 'opacity',
      start: 0.3,
      end: 1,
      pin: true
    })

    scrollorama.animate('#progress-8', {
      duration: 1,
      delay: 1800,
      property: 'opacity',
      start: 0.3,
      end: 1,
      pin: true
    })

    scrollorama.animate('#progress-9', {
      duration: 1,
      delay: 2000,
      property: 'opacity',
      start: 0.3,
      end: 1,
      pin: true
    })

    scrollorama.animate('#progress-10', {
      duration: 1,
      delay: 2200,
      property: 'opacity',
      start: 0.3,
      end: 1,
      pin: true
    })

    scrollorama.animate('#phone', {
      duration: 1,
      delay: 2400,
      property: 'opacity',
      start: 0.3,
      end: 1,
      pin: true
    })

    scrollorama.animate('#phone-tip', {
      duration: 1,
      delay: 2400,
      property: 'opacity',
      start: 0,
      end: 1,
      pin: true
    })

    scrollorama.animate('#phone-tip', {
      duration: 1,
      delay: 2600,
      property: 'z-index',
      start: 20,
      end: -1,
      pin: true
    })

    scrollorama.animate('#check', {
      duration: 1,
      delay: 2600,
      property: 'opacity',
      start: 0,
      end: 1,
      pin: true
    })

    scrollorama.animate('#check-tip', {
      duration: 1,
      delay: 2600,
      property: 'opacity',
      start: 0,
      end: 1,
      pin: true
    })

HowItWorksAnimation.init() if $('#trackr-diagram').size() > 0
