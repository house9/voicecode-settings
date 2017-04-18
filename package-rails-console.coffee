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

localPackage.command 'rake',
  spoken: 'pitchfork'
  description: 'run rake'
  enabled: true
  oneArgument: true
  action: (input) ->
    # if input?
    #   @string "bundle exec rake db:migrate"
    # else
    @string "bundle exec rake "

# TODO: make this an override of: `snipline`, for iterm/terminal
localPackage.command 'swift',
  spoken: 'swift'
  description: 'clear the current line in the console'
  enabled: true
  action: ->
    @key 'e', 'control'
    @key 'u', 'control'

localPackage.command 'git-checkout-new-branch',
  spoken: 'new branch'
  description: 'create a new branch'
  enabled: true
  oneArgument: true
  grammarType: 'textCapture'
  action: (input) ->
    @string "git checkout -b #{input}"
