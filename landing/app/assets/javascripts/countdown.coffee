window.Countdown =
  init: ->
    d = new Date(Date.UTC(2014, 4, 30, 7, 59))
    yr = d.getFullYear()
    mth = d.getMonth() + 1
    day = d.getDate()
    hrs = d.getHours()
    date = [yr, mth, day].join('/')

    $('#clock').countdown(date + ' ' + hrs + ':00', (event) ->
      $(this).html(event.strftime(
        '<span class="clock-face"><div class="clock-panel">' + event.offset.totalDays + '</div><div class="clock-text">Days</div></span>' +
        '<span class="clock-face"><div class="clock-panel">%H</div><div class="clock-text">Hours</div></span>' +
        '<span class="clock-face"><div class="clock-panel">%M</div><div class="clock-text">Mins</div></span>' +
        '<span class="clock-face"><div class="clock-panel">%S</div><div class="clock-text">Secs</div></span>'
      ))
    )

$ ->
  Countdown.init() if $('#clock').size() > 0
