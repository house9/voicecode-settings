localPackage = Packages.register
  name: 'user-test'
  description: 'testing voice code things'
  platforms: [
    'darwin'
    'linux'
    'windows'
  ]
  applications: [
    'com.googlecode.iterm2',
    'com.apple.Terminal'
  ]

localPackage.command 'type-abc',
  spoken: 'casper'
  enabled: false
  action: ->
    @string 'abc '
