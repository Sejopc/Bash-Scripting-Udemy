# disown command removes jobs from shell table (shown by #jobs command)

# so if you type: # sleep 100 &
# and then
# sleep 90 &
# and then
# jobs -> you will see both sleep processes running in background, but if you type:
# disown
# it will automatically remove the lastly send job, so it will remove the sleep 90 job from background
