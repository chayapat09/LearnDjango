## List of Linux/macos commands
### Linux commands
Read / Write File :
```
cat
```
Create folder(sub-directory) :
```
mkdir <dir_name>
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
### Python OS (import os)
Operating System commands

To get string of current directory (get current working directory):
```
os.getcwd() (return <string>)
```

To change working directory same as cd in linux commands:

```
os.chdir(<string>) (return <None>)
```

To list files and folder on current directory :
```
os.listdir() (return list<string> )
```

Making directories :

```
os.mkdir(<string>) (return None)
```
 
Making with sub-directories that main directories doesn't exist

```
os.makedirs(<string>) (return None) Ex. os.makedirs('ABC/XYZ') #with ABC did't created before
```

Delete directories:
```
os.rmdir(<string>) (return None)
```

And this will remove all directories recursively 
```
os.removedirs(<string>) (return None) # main directory will be remove too!
```

Show avalible sub-commands of commans:
```
dir(<command>) #Ex . dir(os) will return list of xxx that os.xxx exists
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