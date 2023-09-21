#!/bin/sh

function show_notification()
{
DISPLAY_MESSAGE=$1
button=`osascript <<END
    try
        display notification "All graphics have been converted." with title "My Graphic Processing Script" subtitle "Processing is complete. $DISPLAY_MESSAGE" sound name "Frog"
    end try
END`
}

function show_message_box()
{
DISPLAY_MESSAGE=$1
button=`osascript <<END
    try
        display dialog ("${DISPLAY_MESSAGE}") with title  "Netskope Borderless SD-WAN installer" with icon stop buttons {"OK"}
       set result to button returned of result
    end try
END`
}


function show_message_box2()
{
DISPLAY_MESSAGE=$1
FRONT_END_APP="Finder"


button=`osascript <<END
    try
    tell application "${FRONT_END_APP}"
    activate
       with timeout of 86400 seconds
       display dialog ("${DISPLAY_MESSAGE}") with title  "Netskope Borderless SD-WAN installer" with icon stop buttons {"OK"}
       set result to button returned of result
       end timeout
    end tell
    on error
       activate
       with timeout of 86400 seconds
       display dialog ("${DISPLAY_MESSAGE}") with title  "Netskope Borderless SD-WAN installer" with icon stop buttons {"OK"}
       set result to button returned of result
       end timeout
     end try
END`
}
