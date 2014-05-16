window.Twitter = {
  init: (d, s, id) ->
    fjs = d.getElementsByTagName(s)[0]
    js = d.createElement(s)
    js.id = id
    js.src = 'https://platform.twitter.com/widgets.js'
    js.onload = -> window.twttr.events.bind('tweet', -> window.Twitter.callback())
    fjs.parentNode.insertBefore(js, fjs)

  callback: ->
    $.ajax({
      url: '/twitter_tweet',
      type: 'POST',
      beforeSend: (xhr) -> xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content')),
      dataType: 'json'
    })
    .success((data) ->
      $('.tw-share-button').replaceWith('<button class="btn btn-success"><div class="glyphicon glyphicon-ok"></div>Done</button>')
      $('#social-feedback').html(data.message)
    )
}

$ ->
  Twitter.init(document, 'script', 'twitter-wjs') if $('.tw-share-button').size() > 0
