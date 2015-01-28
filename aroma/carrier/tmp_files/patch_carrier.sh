fullfile=$1
fname=$(basename $fullfile)

cd /tmp/$fname
/tmp/zip -r $fullfile *
busybox mkdir aligned
/tmp/zipalign -f 4 $fullfile ./aligned/$fname
cp ./aligned/$fname $fullfile
