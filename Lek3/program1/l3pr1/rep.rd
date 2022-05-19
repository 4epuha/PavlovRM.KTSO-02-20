Выделение памяти массиву для элементов типа char:
char * c = (char * ) calloc(100, sizeof(char));


По запросу выполняется файл foo.txt для чтения и редактирования:
int fd = open("foo.txt", O_RDONLY | O_CREAT);


Вводим вес файла дескриптора:
printf("fd = %d/n", fd);
Программа прочитает 10 байт и выдаст полученную информацию в sz:
sz = read(fd, c, 10);


Программа выдаст c[sz] = '\0' в конец массива и закроет файл:
if (close(fd) < 0)
{
perror("close file error:");
exit(1);
}
