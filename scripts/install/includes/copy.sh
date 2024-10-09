# Remove existing symlinks
for df in "${backup_files[@]}"
do
    if [ -d ~/${df} ]; then
        rm -rf ~/${df}
        echo ":: Folder $df removed"
    elif [ -f ~/${df} ]; then
        rm ~/${df}
        echo ":: File $df removed"
    else
        echo ":: File ~/${df} does not exists" 
    fi
done

# Copy configuration to dotfiles folder
# if [ -f ~/ml4w-excludes.txt ] ;then
#     echo ":: Exclude file for rsync found"
#     rsync -avhp -I --exclude-from=~/ml4w-excludes.txt ~/ml4w/$version/ ~/
# else
#     rsync -avhp -I ~/ml4w/$version/ ~/
# fi
cd ..
stow .
echo ":: Dotfiles installed in ~/.config/"
cd scripts
