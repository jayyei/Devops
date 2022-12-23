<ÑÑÑÑÑÑ  Notas Linux ÑÑÑÑÑ >

1.- Tipos de shell
Un shell se considera como el intŽrprete de comandos en un sistema operativo basado en Unix y similares

* Bourne Shell (Sh shell)
* C Shell (csh or tcsh)
* Z shell (zsh)
* Bourne again shell (bash)

Utiliza Ôecho $SHELLÕ command para saber el tipo de shell en la que te encuentras

* echo = Print to screen
* ls =  List files & folders
* cd = Change  directory
* pwd = Present working directory
* mkdir = Make directory
* ; = Use it to run multiple commands
* mkdir -p = Make directory hierarchy
* rm -r = remove directory
* cp -r my_dir1 /tmp/my_dir1 = Copy directory
* touch new_file.txt = Create a new file (no contents)
* cat > new_file.txt = Add Contents to file 
* cat new_file.txt = View contents of file 
* cp new_file.txt copy_file.txt = Copy file
* mv new_file.txt sample_file.txt = Move (Rename) file
* rm new_file.txt = Remove (Delete) File  
* tree /home = lista de forma recursiva los directorios y archivos

* whoami = to know which user you are
* id = tell us more information about the user
* su another_user = to switch user session
* ssh username@url_host | e.g ssh aparna@192.168.1.2 = to access one system from another system

* curl http://www.some-site.com/some-file.txt -O = use to download a file from a url
* wget http://www.some-site.com/some-file.txt -O some-file.txt = use to download a file from a url and specify a filename

ls /etc/*release* =. check diferents os versions
cat /etc/*release* = View details about the os versions

[Red-HAT package manager] RPM (no se preocupa por las dependencias de los paquetes)
* rpm -i telnet.rpm = install package
* rpm -e telnet.rpm = uninstall package
* rpm -q telnet.rpm = query package

[High level package manager] YUM (uses RPM underneath, install the package and all of it's dependency packages)
[La configuracion del repo esta en /etc/yum.repos.d
* yum install ansible = install ansible
* yum repolist


SERVICES
services in linux help you configure software to run in the background and make sure that they run all the time automatically
when the servers are reboted as well as they follow the right order of startup
* service httpd start = start HTTPD service
* systemctl start httpd = start HTTPD service
* systemctl stop httpd = stop HTTPD service
* systemctl status httpd = Check HTTPD service Status
* systemctl enable httpd = Configure HTTPD to start at startup
* systemctl disable httpd = Configure HTTPD to not start at startup

PID = es un acr—nimo para el numero de identificacion de proceso en linux. Un PID es asignado a cada proceso cuando este es creado
un proceso no es mas que una instancia de programa corriendo.

Tu puedes correr programas aunque no esten en el directory especificado por la variable de entorno PATH
para ello tienes que hacer referencia al ejecutable o binario indicando su ubicacion en el sistema
commando 7z = "C:\Program Files\7-Zip\7z.exe"
* realpath file.ext = obten la ruta completa del archivo en linux

Systemd es un sistema y servicio administrado por linux
para que una aplicacion pueda ser administrada por linux tiene que ser tratada dentro de la carpeta systemd
dentro de ella se crean archivos .service en donde se configura el servicio, por ejemplo

my_app.service
[Unit]
Description=My python web application

[Service]
ExecStart=/usr/bin/python3 /opt/code/my_app.py
ExecStartPre=/opt/code/configure_db.sh
ExecStartPost=/opt/code/email_status.sh
Restart=always

[Install]
WantedBy=multi-user.target


systemctl daemon-reload = to let systemd know that there is a new system configured
systemctl start my_app = to run the service
systemctl stop my_app = to stop the service
systemctl status my_app = check the service status

KERNEL
El kernel de linux es el elemento principal de los SO de linux y es la interfaz fundamental entre el hardware de una computadora y sus procesos
dicha interfaz comunica dichos procesos entre si y gestiona los recursos de la manera mas eficiente posible.

* gestion de la memoria
* gestion de los procesos
* controlador de dispositivos
* seguridad y llamadas al sistema

DAEMON (demonio)
Es un programa de linux o UNIX que se ejecuta en segundo plano, fuera del control interactivo de los usuarios de sistema
* httpd = el demonio que maneja el servidor Apache.
* sshd = el demonio que maneja las conexiones de acceso remoto SSH

VIRTUAL MACHINE
es la virtualizacion/emulacion de un sistema de computo


