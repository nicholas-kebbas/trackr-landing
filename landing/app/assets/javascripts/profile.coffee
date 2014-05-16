window.Profile =

  addTweetListener: ->
    $('body').on('click', '.tw-share-button', ->
      _kmq.push(['trackClick', 'tw', 'Twitter Share',{'Share': 'Twitter'}])
    )

  addFBListener: ->
    $('body').on('click', '.fb-share-button', ->
      _kmq.push(['trackClick', 'fb', 'Facebook Share', {'Share': 'Facebook'}])
    )

  pushKmVirality: ->
    this.pushTwitter()
    this.pushFB()

  pushTwitter: ->
    if fullUrl = $('a.tw-share-button').attr('href')
      regex = /\?url=(.*?)\&/
      shareUrl = regex.exec(fullUrl)[1]
      _kmq.push(decodeURIComponent(shareUrl))

  pushFB: ->
    if fullUrl = $('a.fb-share-button').data('href')
      regex = /\?u=(.*)/
      shareUrl = regex.exec(fullUrl)[1]
      _kmq.push(decodeURIComponent(shareUrl))

  init: ->
    this.addTweetListener()
    this.addFBListener()
    this.pushKmVirality()

Profile.init() if $('section#profile').size() > 0
