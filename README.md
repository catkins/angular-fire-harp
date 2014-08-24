### AngularFire on Harp

Some experiments with [AngularFire](https://www.firebase.com/docs/web/libraries/angular/index.html) + [HarpJS](http://harpjs.com) to create statically compileable applications with a realtime backend.


#### Prerequisites

* NodeJS
* A developer app on Firebase.com (free hacker plan)


#### Development

```bash
# pull down the repo
git clone git@github.com:catkins/angular-fire-harp.git

# make sure you have harp and bower installed
sudo npm install -g harp bower

# pull the dependencies
npm install
bower install

# Create an developer app at firebase.com and export the url
export FIREBASE_URL='https://your-app.firebaseio.com/whatever'

# start the harpjs server
harp server
```

You can now visit your local harp application at [http://localhost:9000](http://localhost:9000)

#### Environment variables

I use [direnv](http://direnv.net/) to manage project specific environment variables without cluttering up my project directory.

```bash
# .envrc
export FIREBASE_URL='https://your-app.firebaseio.com/whatever'
```
