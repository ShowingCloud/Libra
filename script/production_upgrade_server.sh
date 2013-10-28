#!/bin/bash

set -x

RAILS_ENV=production
export RAILS_ENV

git pull
rake db:migrate

#rake db:data:load_dir dir="datadump"
#rm -rf vendor/assets/images
#cp -r ../testing/vendor/assets/images/ vendor/assets/images/

rake paperclip:refresh:thumbnails CLASS=Spree::Image

rake assets:clean
rake assets:precompile
