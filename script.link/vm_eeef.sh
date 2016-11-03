# creates a rdesktop connection with the right size
# 1 - display 1 (1600x900)
# 2 - display 2 (1600x1200)

if [ $1 -eq 1 ]
then
  rdesktop 141.56.139.95 -u Administrator -g 1600x850
elif [ $1 -eq 2 ]
then
  rdesktop 141.56.139.95 -u Administrator -g 1600x1180
fi
