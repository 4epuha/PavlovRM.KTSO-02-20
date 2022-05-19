Программа создает канал с правами доступа для всех:
int fd;
int len;
char buf[BUFSIZE];
if (mkfifo(NAMEDPIPE_NAME, 0777))
{
perror("mkfifo");
return 1;
}


Затем в программе запускается бесконечный цикл:
do {
memset(buf, '\0', BUFSIZE);
if ((len = read(fd, buf, BUFSIZE - 1)) <= 0)
{
error("read error");
close(fd);
remove(NAMEDPIPE_NAME);
return 0;
}
printf("Incoming message (%d): %s\n", len, buf);
} while (1);


Если на вход поступает сообщение:
if ((len = read(fd, buf, BUFSIZE - 1)) <= 0)</ br> 
Колличество пользователей переменных и выводит себя.
