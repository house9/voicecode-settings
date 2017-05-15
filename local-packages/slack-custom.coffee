localPackage = Packages.register
  name: 'slack-custom'
  description: 'common shortcuts for slack'
  platforms: [
    'darwin'
    'linux'
    'windows'
  ]
  applications: [
    'com.tinyspeck.slackmacgap',
  ]

localPackage.command 'thumbs-up',
  spoken: 'thumbs up'
  description: 'type: +:thumbsup: enter'
  enabled: true
  action: ->
    @string "+:thumbsup:"
    @key 'enter'

localPackage.command 'thumbs-up-loud',
  spoken: 'thumbs up loud'
  description: 'type: :thumbsup: enter'
  enabled: true
  action: ->
    @string ":thumbsup:"
    @key 'enter'

localPackage.command 'emoji-start',
  spoken: 'emoji'
  description: 'type: +: to start in emoji'
  enabled: true
  action: ->
    @string "+:"
