awk '{
    sec = int($1)
    day = int(sec/3600/24)
    sec -= day*24*3600
    hour = int(sec/3600)
    sec -= hour*3600
    min = int(sec/60)
    print day"d "hour"h "min"m"
}' /proc/uptime
