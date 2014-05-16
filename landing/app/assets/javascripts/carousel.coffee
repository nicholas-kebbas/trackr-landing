window.Carousel =
  words: ['anything', 'your keys', 'your luggage', 'your bike', 'your purse', 'your remote', 'your dog', 'your cat', 'your iPad']

  changeWord: (count) ->
    $('.caption .highlight').html(this.words[count%9])
    count++
    setTimeout(->
      Carousel.changeWord(count)
    , 2000)

  init: ->
    setTimeout(->
      Carousel.changeWord(1)
    , 5000)

$ ->
  Carousel.init() if $('#signup-top').size() > 0
