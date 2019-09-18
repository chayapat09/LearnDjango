## List of Linux/macos commands
### Linux commands
Read / Write File :
```
cat
```

Wordcount :
```
wc
```
Display first/last (10 if not specified) lines of output:
```
head/tail [-lines]
```

Unix Pipeline [ https://en.wikipedia.org/wiki/Pipeline_(Unix) ]
```
process1 | process2 | process3
```

### Python Virtual Environment Commands
To create numbers of Virtual Environment for Using Varies of Python Tools

To creating Virtual Environment at <path> :
```
virtualenv <path> 
```

To creating Virtual Environment with specific python version :
```
virtualenv -p
```
To executed binary code in linux :
```
source <file_path>
```

To start Virtual Environment type in below command at VE root :
```
./bin/activate
```
To exit from Virtual Environment :
```
deactivate
```
To find directory of packages :
```
which <packages> ; //Ex. which python3 will return dir of python3
```
To list installed python packages :
```
pip3 freeze
```
### Network commands

Checking IP address of network interfaces :
```
ifconfig
```
Checking <domain> IP addresses (name-server-lookup):
```
nslookup
```

Show Routing of packets from This Computer to Server:
```
traceroute
```

HTTP commands:
```
curl
```

### Django-admin commands

To generate Django Project file:
```
django-admin startproject <project_name>
```
To create new app :
```
python manage.py startapp polls
```