#!/bin/bash

copy .viminfo, .bash_history
cp ~/.bash_history ~/dotfiles/
cp ~/.vimrc ~/dotfiles/

fun(){

}

#!/bin/bash

fb-getjson(){

# create app
TODO: how to get appId from output of firebase app: create ANDROID

# Download the json of the app (with the app id)

# redirect output to google-services.json
firebase apps:sdkconfig ANDROID 1:623948835929:android:4a3f77e8c0f4dc43c49548  > google-services.json

# move to the development dir
mv google-services.json ~/Developer/nhatngu/android/app/

}
