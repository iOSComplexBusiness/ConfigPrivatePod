#!/bin/bash

VersionString=`grep -E 's.version.*=' __ProjectName__.podspec`
VersionNumber=`tr -cd 0-9 <<<"$VersionString"`

NewVersionNumber=$(($VersionNumber + 1))
LineNumber=`grep -nE 's.version.*=' __ProjectName__.podspec | cut -d : -f1`
sed -i "" "${LineNumber}s/${VersionNumber}/${NewVersionNumber}/g" __ProjectName__.podspec

echo "current version is ${VersionNumber}, new version is ${NewVersionNumber}"

git add .
git commit -am ${NewVersionNumber}
git tag ${NewVersionNumber}
git push origin master --tags
pod repo push zy-specs __ProjectName__.podspec --verbose --allow-warnings --use-libraries --use-modular-headers

#  pod repo list 
# ...
#zy-specs
#- Type: git (unknown)
#- URL:  https://github.com/iOSComplexBusiness/PrivatePods
#- Path: /Users/yestin/.cocoapods/repos/zy-specs
