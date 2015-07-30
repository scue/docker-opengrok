#!/bin/bash 
#===============================================================================
#
#          FILE: start.sh
# 
#         USAGE: ./start.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: scue, scue@vip.qq.com
#  ORGANIZATION: 
#       CREATED: 07/30/2015 02:08:22 PM CST
#      REVISION:  ---
#===============================================================================

start_opengrok(){
    # wait for tomcat startup
    while ! ( ps aux|grep -q org.apache.catalina.startup.Bootstrap ); do
        sleep 1;
    done
    OpenGrok index /src
}

start_opengrok &
catalina.sh run
