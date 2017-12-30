#/bin/sh

TAG=$(git describe --tags $(git rev-list --tags --max-count=1))
MAJMIN=`echo $TAG | cut -d . -f 1,2 `

echo $TAG
echo $MAJMIN

for dir in alpine-python3 alpine-python2 alpine-mosquitto alpine-minidlna # alpine-python3-cron
do
	cd $dir
	docker build . -t seblucas/$dir:armv6-$TAG
	docker push seblucas/$dir:armv6-$TAG
	sed -i "s|{image}|$dir|g" ../manifest.yaml
	sed -i "s|{tag}|$TAG|g" ../manifest.yaml
	sed -i "s|{majmin}|$MAJMIN|g" ../manifest.yaml
	manifest-tool push from-spec ../manifest.yaml
	git checkout ../manifest.yaml
	cd ..
done
