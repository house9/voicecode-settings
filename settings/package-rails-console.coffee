localPackage = Packages.register
  name: 'rails-console'
  description: 'common things for rails console'
  platforms: [
    'darwin'
    'linux'
    'windows'
  ]
  applications: [
    'com.googlecode.iterm2',
    'com.apple.Terminal'
  ]

localPackage.command 'awesome-print',
  spoken: 'awesome print'
  description: 'use awesome print with rails console'
  enabled: true
  grammarType: 'textCapture'
  oneArgument: true
  action: (input) ->
    if input?
      @string "ap #{Transforms.stud(input)}."
    else
      @string 'ap '
