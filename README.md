1. Подготовка тестового окружения:
   1.1 Команда:sudo apt update && sudo apt install nginx -y # Установим Nginx 
   
   1.2 Команда: systemctl status nginx # Проверяем статус Nginx
       Вывод:  nginx.service - A high performance web server and a reverse proxy server
     Loaded: loaded (/lib/systemd/system/nginx.service; enabled; preset: enabled)
     Active: active (running) since Thu 2025-07-31 20:41:19 +05; 1min 22s ago
       Docs: man:nginx(8)
    Process: 3846 ExecStartPre=/usr/sbin/nginx -t -q -g daemon on; master_process on; (code=exited, status=0/SUCCESS)
    Process: 3847 ExecStart=/usr/sbin/nginx -g daemon on; master_process on; (code=exited, status=0/SUCCESS)
   Main PID: 3882 (nginx)
      Tasks: 13 (limit: 9438)
     Memory: 8.3M
        CPU: 37ms
     CGroup: /system.slice/nginx.service
             ├─3882 "nginx: master process /usr/sbin/nginx -g daemon on; master_process on;"
             ├─3884 "nginx: worker process"
             ├─3885 "nginx: worker process"
             ├─3886 "nginx: worker process"
             ├─3887 "nginx: worker process"
             ├─3888 "nginx: worker process"
             ├─3889 "nginx: worker process"
             ├─3890 "nginx: worker process"
             ├─3891 "nginx: worker process"
             ├─3892 "nginx: worker process"
             ├─3893 "nginx: worker process"
             ├─3894 "nginx: worker process"
             └─3895 "nginx: worker process"

Jul 31 20:41:19 DESKTOP-6IS3T69 systemd[1]: Starting nginx.service - A high performance web server and a reverse proxy server...
Jul 31 20:41:19 DESKTOP-6IS3T69 systemd[1]: Started nginx.service - A high performance web server and a reverse proxy server.

  1.3 Команада: sudo systemctl enable nginx # Настройка автозапуска nginx при старте системы
      Вывод: Synchronizing state of nginx.service with SysV service script with /lib/systemd/systemd-sysv-install.
Executing: /lib/systemd/systemd-sysv-install enable nginx
      Проверка: sudo systemctl is-enabled nginx
      Вывод: enabled

  1.4 Команда: sudo reboot # Тест вручную — перезагрузите систему
      Команда: systemctl status nginx
      Вывод: ● nginx.service - A high performance web server and a reverse proxy server
     Loaded: loaded (/lib/systemd/system/nginx.service; enabled; vendor preset: enabled)
     Active: active (running)

