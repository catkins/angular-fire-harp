app = angular.module 'angular-fire-harp', ['ui.bootstrap']

app.value 'firebaseUrl', window.FIREBASE_URL


app.controller 'MainCtrl', ($scope, firebaseUrl) ->
  @hello = 'Hello World'

  @firebaseUrl = firebaseUrl
