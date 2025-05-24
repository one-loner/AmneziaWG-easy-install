# AmneziaWG-easy-install   
## EN   
Amnezia WG server on your VPS in a Docker container. Made based on [this repository](https://github.com/w0rng/amnezia-wg-easy)   
Raises the server on port 161 and the web interface on the local loop on port 51821 with a standard password. I did this for the following reasons   
* The password cannot be changed without deleting and re-creating the container.   
* There may be problems with obtaining the Hash_Password.   
* Web interface via http without any masking.   
   
Install by shell command from server:    
   
bash -c "$(curl -L https://github.com/one-loner/AmneziaWG-easy-install/raw/main/install.sh)"   
   
After raising the container, you need to forward port 51821 via ssh from your local computer using the command ssh -L 51821:localhost:51821 user@remote-server   
Next, you need to go to the address 127.0.0.1:51821 in the browser on your local computer and enter YOUR_PASSWORD as the password, then create users and copy their QR codes or download the configurations.   
## RU   
Сервер Amnezia WG на вашем VPS в Docker контейнере. Сделал на основе [этого репозитория](https://github.com/w0rng/amnezia-wg-easy)   
Поднимает сервер на 161 порту и веб-интерейс на локальной петле на 51821 порту со стандартным паролем. Сделал так по следующим причинам   
* Пароль нелзя поменять без удаления и создания контейнера заново.   
* С получением Hash_Password могут возникнуть проблемы.   
* Веб-интерфейс по http без какой-либо маскировки.   
   
Установка в одну команду с сервера:   
   
bash -c "$(curl -L https://github.com/one-loner/AmneziaWG-easy-install/raw/main/install.sh)"   
    
После поднятия контейнера необходимо с локального компьютера пробросить порт 51821 по ssh командой ssh -L 51821:localhost:51821 user@remote-server   
Далее необходимо зайти в браузере на своём локальном компьютере по адресу 127.0.0.1:51821 и в качестве пароля ввести YOUR_PASSWORD затем создать пользователей и скопировать их QR-коды или скачать конфигурации.   
