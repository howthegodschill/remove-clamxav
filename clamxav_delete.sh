#!/bin/sh

<<ABOUT_THIS_SCRIPT
-----------------------------------------------------------------------
	Written by: Devin Miller

	Originally posted: November 17, 2020

	Purpose: Run this script as part of a Jamf Pro policy to remove
  	the ClamXAV application and its components.
	This was created based on ClamXAV version 2.1.3.

	Except where otherwise noted, this work is licensed under
	http://creativecommons.org/licenses/by/4.0/

-----------------------------------------------------------------------
ABOUT_THIS_SCRIPT

sudo rm -R /Library/LaunchAgents/uk.co*
sudo rm -R /Library/LaunchDaemons/uk.co*
sudo rm -R /Library/PrivilegedHelperTools/uk.co*
sudo rm -R /private/var/db/receipts/uk.co*
sudo rm -R /Users/*/Library/Preferences/uk.co*
sudo rm -R /Users/*/Library/Logs/ClamXAV*
sudo rm -rf /usr/local/ClamXAV3
sudo rm -rf /Library/Application\ Support/ClamXAV
sudo rm -rf /Users/*/Library/Caches/uk.co*
sudo rm -rf /private/var/folders/*/*/*/uk.co*

# Deleting the application last in order to prevent ClamXAV's deletion pop-up
sudo rm -R /Applications/ClamXAV.app
