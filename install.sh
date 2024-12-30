#!/bin/bas

DIR="nvim"
TARGET_DIR="$HOME/.config/$DIR"
CURRENT_DIR=$(pwd)

echo "biri baa boom boob ..."
sleep 0.4

# check if directory exists
if [[ -d $TARGET_DIR ]]; then
  
  # check if the directory is not empty
  if [[ ! -z "$(ls $TARGET_DIR -A)" ]]; then
    
    # checking backup directory
    if [[ -d "$CURRENT_DIR/recover" ]]; then
      
      # read confirm
      read -p "Recover files already exists, You sure want to ovewrite them? (y) " confirm
      
      if [[ $confirm == "y" || $confirm == "Y" ]]; then
        echo "Removing existing backup ..."
        rm -rf $CURRENT_DIR/recover
        mkdir -p $CURRENT_DIR/recover
        
        # backup the existing files
        echo "Creating Backup of existing files ..."
        cp -r $TARGET_DIR/* $CURRENT_DIR/recover || { echo "Error copying files to backup..."; exit 1; }
      else

        # skip this dip shit
        echo "Skipping Backup of existing files ..."
      fi
    else

      # creating directory
      mkdir -p $CURRENT_DIR/recover
      cp -r $TARGET_DIR/* $CURRENT_DIR/recover || { echo "Error copying files to be backup..."; exit 1; }
      echo "Backup of existing files created ..."
    fi
  fi
else

 # create directiry if it doesn't exist
 mkdir -p $TARGET_DIR
 echo "Directiry created ..."
fi
sleep 0.4

#  transfering files to config
echo "Transfring files ..."
sleep 0.4

cp -r $CURRENT_DIR/lua $TARGET_DIR || { echo "Error copying lua directory"; exit 1; }
cp -r $CURRENT_DIR/init.lua $TARGET_DIR || { echo "Error copying init.lua"; exit 1; }
cp -r $CURRENT_DIR/*.json $TARGET_DIR || { echo "Error copying .json"; exit 1; }
cp -r $CURRENT_DIR/.git $TARGET_DIR || { echo "Error copying .git"; exit 1; }

echo "You'r good to GO ;) "
sleep 0.4

