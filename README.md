# hostDiscovery
Descubrimiento de dispositivos en red

Funcionamiento: 

Sin parámetros
  > En este caso sería para trabajar con las IPs de HTB con el formato 10.10.10.X, variando el script en la X
  
Con parámetros
  > Aquí deberemos pasarle como parámetros al script 3 números, siendo estos los 3 primeros elementos de la red que queremos escanear
  > De esta forma cambiamos el 10.10.10 del caso de Sin parámetros por los deseados, como podrían ser 192.168.0.X
  
  Ej : `sudo ./hostDiscovery.sh 192 168 0`
