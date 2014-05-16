window.Facebook =
  init: (d, s, id) ->
    fjs = d.getElementsByTagName(s)[0]
    js = d.createElement(s)
    js.id = id
    js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=1408418506075813";
    # js.onload = -> FB.Event.subscribe('edge.create', window.Facebook.callback)
    fjs.parentNode.insertBefore(js, fjs)

    $('body').on('click', '.fb-share-button', ->
      console.log('clicked...')
      Facebook.ui()
    )

  ui: ->
    FB.ui(
      {
        method: 'feed'
        name: 'Phonehalo',
        link: 'https://www.facebook.com/phonehalo'
        # picture: 'http://fbrell.com/f8.jpg',
        caption: 'TrackR',
        description: 'Never lose anything ever again'
      },
      (response) ->
        if (response && response.post_id)
          Facebook.callback()
        else
          console.log('Not published...')
    )

  callback: ->
    $.ajax({
      url: '/facebook_share',
      type: 'POST',
      beforeSend: (xhr) -> xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content')),
      dataType: 'json'
    })
    .success((data) ->
      $('.fb-share-button').replaceWith('<button class="btn btn-success"><div class="glyphicon glyphicon-ok"></div>Done</button>')
      $('#social-feedback').html(data.message)
    )

  shareInit: ->
    $('body').on('click', '.fb-share-button', ->
      window.open($(this).data('href'),'PhoneHalo','height=300,width=600')
      setTimeout(Facebook.callback(), 5000)
      return false
    )


$ ->
  Facebook.shareInit() if $('#fb-root').size() > 0
  # Facebook.init(document, 'script', 'facebook-jssdk') if $('#fb-root').size() > 0
