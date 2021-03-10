#!/usr/bin/env bash

cp com.user.envrion.custom.plist ${HOME}/Library/LaunchAgents/com.user.envrion.custom.plist
cp setenv.sh /usr/local/bin/setenv.sh
chmod +x /usr/local/bin/setenv.sh
touch ${HOME}/.environmentrc

cat << EOF
Complete! Edit ${HOME}/.environmentrc for setting envrioment variables golbally.
For example, setting JAVA_HOME globally can add content with: 

JAVA_HOME=\$(/usr/libexec/java_home)
JDK_HOME=\${JAVA_HOME}

to ${HOME}/.environmentrc.

The environment variables set in ${HOME}/.environmentrc can be seen by all programes,
not just programes launched in terminal.
EOF