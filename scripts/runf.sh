#!/bin/bash

run_flutter_from_git(){
  echo "---fetch from github $1/$2"
  # $(git clone https://github.com/${1}/${2} && cd ${2} && flutter run) # ok
  git clone https://github.com/$1/$2
  echo "---accessing folder"
  cd $2
  echo "---fetchin plugins"
  flutter pub get
  echo "---start running"
  flutter run
}
