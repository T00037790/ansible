# Cofiguración de Ansible

## Primer paso, instalación de los servidores web y de archivos.

instalación y configuración de los siguientes 3 servicios:

  Apache
  MySQL
  Redis

### Apache

#### Requisitos

Requisitos necesarios para compilar Apache:

Espacio en disco
    Compruebe que tiene disponibles al menos 50 MB de espacio libre en disco. Después de la instalación, Apache ocupa aproximadamente 10 MB. No obstante, la necesidad real de espacio en disco varía considerablemente en función de las opciones de configuración que elija y de los módulos externos que use.

Compilador ANSI-C y Build System
    Compruebe que tiene instalado un compilador de ANSI-C. Se recomienda el Compilador GNU C (GCC) de la Free Software Foundation (FSF) (con la versión 2.7.2 es suficiente). Si no tiene instaldo el GCC, entonces compruebe que el compilador que va a utilizar cumple con los estándares ANSI. Además, su variable de entorno PATH debe contener la ubicación en la que se encuentran las herramientas básicas para compilar, como por ejemplo make.

    Ajuste exacto del reloj del sistema
        Los elementos del protocolo HTTP están expresados según la hora del día. Por eso, si quiere puede investigar como instalar alguna utilidad para sincronizar la hora de su sistema. Para esto, normalmente, se usan los programas ntpdate o xntpd, que están basados en el protocolo Network Time Protocol (NTP). Consulte el grupo de noticias comp.protocols.time.ntp y el sitio web de NTP para obtener más información sobre NTP y los servidores públicos de tiempo.

### MySQL

#### Requisitos

          512 Mb de memoria Ram.
          1024 Mb maquina virtual.
          1 GB de espacio de disco duro.
          Sistema operativo:Windows,Linux y Unix.
          Arquitectura del sistema 32/64 bit.
          Protocolo de red TCP/IP.

### Redis

Redis es una base de datos NoSQL. Es una base de datos no relacional y funciona a modo de clave-valor. A diferencia de las bases de datos relacionales como MySQL, Oracle y PostgreSQL entre otras, las bases de datos NoSQL ofrecen una velocidad de lectura rapidísima, lo que las hacen muy útiles en algunos tipos de aplicaciones web, donde la velocidad de obtención de datos es mucho más importante que su relación.

#### Requisitos


Dimensionar Redis no es solo una cuestión de dimensionar su memoria, sino también ajustar el resto de los recursos. Sé consciente de:

        Una máquina (o máquina virtual) debería estar dedicada a Redis.
        En la máquina dedicada, debería haber exactamente dos CPU. El sistema usa una CPU y está prácticamente inactiva. La otra CPU es utilizada por Redis.
        La asignación de tres CPU no perjudica a Redis, pero la tercera CPU nunca se usará.
        La velocidad de la CPU no es un factor crucial. La CPU de Redis permanece inactiva la mayor parte del tiempo. Se necesita mucho tráfico para aumentar la CPU a una carga pesada.


## Arquitectura


![ansible001](https://user-images.githubusercontent.com/21178320/32872325-1fa3c8a8-ca54-11e7-8e17-631f075b1dca.png)
