app = angular.module 'angular-fire-harp', ['ui.bootstrap', 'firebase']

app.value 'firebaseUrl', window.FIREBASE_URL

app.controller 'MainCtrl', ($scope, $firebase, firebaseUrl) ->
  @hello       = 'Hello Angular'
  @firebaseUrl = firebaseUrl + '/messages'

  ref  = new Firebase firebaseUrl
  @sync = $firebase ref

  @messages = @sync.$asArray()

  @addMessage = (newMessage) ->
    @messages.$add( body: @newMessage)
    @newMessage = ''

  @deleteMessage = (message) =>
    @messages.$remove(message)

  @newMessage = ''

  # sometimes automatic returns break things...
  return undefined
