#!/bin/bash

cd /var/www
for FILE in *.html
do
    echo "Copying $FILE"
    cp $FILE /var/www-just-html
done

# for FILE in /var/www/*.html
# do
#     echo "Copying $FILE"
#     cp $FILE /var/www-just-html
# done

# # This will loop through all the "html" files in the current directroy.
# for FILE in *.html
# do
#     echo "Copying $FILE"
#     cp $FILE /var/www-just-html
# done
