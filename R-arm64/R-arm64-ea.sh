#!/bin/bash

ExtensionVersion=""

if [ -f /Library/Frameworks/R.framework/Versions/Current/Resources/Info.plist ] ; then
    ExtensionVersion=$(defaults read  /Library/Frameworks/R.framework/Versions/Current/Resources/Info.plist  CFBundleVersion)
fi

if [ "$ExtensionVersion" == "" ] ; then
    ExtensionVersion="Not Installed"
fi

echo "&lt;result&gt;$ExtensionVersion&lt;/result&gt;"

exit 0
