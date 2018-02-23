# Postman updater for Linux

## What is this?

[Postman](https://www.getpostman.com) is a popular tool for API development. 
The downside when using it with Linux is the lack of automated update when 
a new version is released. Download the latest version, uninstall the previous 
one, install the new one, is a tedious job. 

**postman-updater** aim is to make the update process easier. It does 
exactly the same steps for you. 

## How to use it?
1. Download the postman-updater.sh file on your computer or checkout this repository.
2. Change the file permissions in order to be executable by the current user.
```bash
chmod u+x postman-updater.sh
```

3. Run the program with:
```bash
./postmain-updater.sh
```
Your `sudo` password will be required at some point, as the installation will 
take place under `/usr/bin` folder.


