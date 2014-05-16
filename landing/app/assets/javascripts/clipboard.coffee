window.ClipBoard =
  init: ->
    $('body').on('click', '.copy-to-clipboard', (e) ->
      ClipBoard.copy()
      return false
    )

  copy: ->
    window.prompt("Copy to clipboard: Ctrl+C (Cmd+C on Mac)", $('.refer-btn').text().trim());

$ ->
  ClipBoard.init() if $('.copy-to-clipboard').size() > 0
