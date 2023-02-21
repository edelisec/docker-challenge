### Salida de los resultados Parte 3. 


#### 1. Script 

```
docker run --name bootcamp web -p 9999:80 -d nginx
docker exec -it bootcamp-web 
docker cp /home/vagrant/index.html bootcamp-web:/usr/share/nginx/html/
docker exec bootcamp-web ls /usr/share/nginx/html/
```

#### 2. Salida de los comandos en consola

![Captura de Tela (223)](https://user-images.githubusercontent.com/120527123/220422500-3750e56c-839c-4847-ad54-f8bc59a1731f.png)

#### 3. Salida de los resultados en el localhost

![Captura de Tela (222)](https://user-images.githubusercontent.com/120527123/220422577-8c8e5b02-4643-446f-962e-94a63fa571df.png)
