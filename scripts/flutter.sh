#!/bin/bash
# flutter ulities

# fl-build-appbundle - clean then build appbundle
# fl-set-icon - set new icon for the app, to test which icon is suitable for the app
# fl-install-firebase - dependencies
# fl-install-dev-dependencies
# fl-clone - clone form github then run

fl-build-appbundle(){

  # https://flutter.dev/docs/deployment/android#configure-signing-in-gradle
  # Add signing key to android/app/build.gradle
  # TODO: How to add insert file into some line of a file

  flutter clean
  flutter build appbundle
}

fl-set-icon(){

  # local variable
  FILE="$HOME/Downloads/icon.png"
  # or
  # FILE=/Downloads/icon.png without dou

  # check the files exit or not
  if [ -f "$FILE" ]; then
    echo "-----Icon file exists."
    echo
    # if file is not exist, then exit here, not excute the next command
    # move the downloaded icon to the current folder
    mv $FILE ~/Developer/nhatngu/assets/

    # generate icon
    flutter pub run flutter_launcher_icons:main

    # run the app
    flutter run

    else echo "$FILE does not exist"
  fi
}


fl-install-dev-dependencies(){

  flutter pub add change_app_package_name
  flutter pub add flutter_launcher_icons

}

fl-install-firebase(){
  flutter pub add firebase_auth
  flutter pub add firebase_core
  flutter pub add cloud_firestore
  flutter pub add firebase_database
  flutter pub add cloud_functions
  flutter pub add firebase_messaging
}


fl-clone(){

  echo "---clone repo from github $1/$2"
  # $(git clone https://github.com/${1}/${2} && cd ${2} && flutter run) # ok
  git clone https://github.com/"$1"/"$2"

  echo "---accessing folder"
  cd $2

  echo "---fetching plugins"
  flutter pub get

  echo "---awaking emulator with name ius "\test"\""
  flutter emulator launch test

  echo "---start running"
  flutter run

}
