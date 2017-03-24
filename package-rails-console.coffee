localPackage = Packages.register
  name: 'rails-console'
  description: 'common things for on and around the rails console'
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

localPackage.command 'open-atom',
  spoken: 'atom'
  description: 'open atom from the current directory'
  enabled: true
  action: ->
    @string 'atom .'
    @key 'enter'

localPackage.command 'ruby-lint',
  spoken: 'ruby check'
  description: 'run robocop'
  enabled: true
  grammarType: 'textCapture'
  oneArgument: true
  action: (input) ->
    if input?
      @string 'bundle exec rubocop -a '
    else
      @string 'bundle exec rubocop '

localPackage.command 'ruby-spec',
  spoken: 'ruby spec'
  description: 'run rspec'
  enabled: true
  oneArgument: true
  action: (input) ->
    if input?
      @string "bundle exec rspec spec/#{input}"
    else
      @string "bundle exec rspec spec/"
