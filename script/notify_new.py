#!/usr/bin/env python
"""python 2.7 script that creates a notification using pynotify. It shows the current time and a small fortune cookie"""
try:
  import pynotify
  import time
  import subprocess
  if pynotify.init("Wakeup service"):

    # You can get more stock icons from here: http://stackoverflow.com/questions/3894763/what-icons-are-available-to-use-when-displaying-a-notification-with-libnotify
    timeStr = time.strftime("%I:%M %p %d %b")
    n = pynotify.Notification(timeStr, "POMODORO ready", "/usr/share/app-install/icons/ktimer.png")
    n.set_timeout(1)
    n.show()
  else:
    print "problem initializing the pynotify module"
except Exception as exc:
  print "Exception", exc
