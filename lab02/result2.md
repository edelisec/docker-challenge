## Salidas de los resultados Parte 2. Ejecutar un contenedor que corre MongoDB y con el cual nos conectaremos por medio de Python.

### 1. Ejecución del contenedor MongoDB 

![Captura de Tela (215)](https://user-images.githubusercontent.com/120527123/220403501-ee7b4030-4657-4c1d-80e3-26e373e34d79.png)

### 1.1 Conexión a la consola interactiva de MongoDB

![Captura de Tela (218)](https://user-images.githubusercontent.com/120527123/220404543-f4e7ce14-588a-47f9-9ceb-ad60d1c4aa3b.png)

### 2. Ejecución de los scripts find.py y populate.py

![Captura de Tela (219)](https://user-images.githubusercontent.com/120527123/220405422-1f21db80-3eb2-4b29-af55-d55daa4bbd51.png)

### 2.1 Revisión de los registros de los scripts con la CLI de mongo

![Captura de Tela (220)](https://user-images.githubusercontent.com/120527123/220405101-a93f130d-b584-4a4a-96cd-9cbbc0b2d250.png)

### 3. Documentación de como se resolvio

* Iniciar el contenedor MongoDB 

Lo primero es iniciar el contenedor de Docker que ejecute MongoDB, con el siguiente comando:

```docker run -d --name mongo-db -p 27017:27017 mongo:4.4.4-bionic```

Este comando descarga e inicia la imagen de MongoDB, crea un contenedor llamado **mongo-db**.

* Conectarse al contenedor **mongo-db**

Ejecutando el siguiente comando:

```docker exec -it mongo-db /bin/bash```

Este comando abre una terminal interactiva con la cual podemos interactuar usando el comando:

```mongo```

* Ejecutar los scripts de python
Instalando pymongo:

```pip install pymongo```

y luego ejecutando los scripts con estos comandos:

```python find.py```

```populate.py```

* Conectarse a la CLI de mongo para revisar los scripts:

```docker exec -it mongo-db /bin/bash```

y luego:

```mongo```

y utilizar comandos como los siguientes para ver las databases y colecciones que se encuentran en ella:

```show databases;```

```use database;```

```show collections;```

* Detener y remover el contenedor **mongo-db**

Es importante luego de usar el contenedo, detener su ejecución, saliendo de la CLI que estabamos usando con el comando ```exit``` y luego usando los siguientes comandos para detener y remover el contenedor:

```docker stop mongo-db```

y por último:

```docker rm mongo-db```

