window.ZenDesk =

  init: ->
    $('body').on('click', '#zenbox_tab', ->
      _kmq.push(['trackClick', 'zenbox_tab', 'Zendesk Clicked'])
    )

ZenDesk.init() if $('#zenbox_tab').size() > 0