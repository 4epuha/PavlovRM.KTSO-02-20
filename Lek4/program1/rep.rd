Программа получает сигнал от пользователя и обрабатывает его.
Запускается глобальный счетчик:
int counter = 0;


В программе есть две главных функции - handler1:
void handler1(int sig)
{
counter++;
printf("counter = %d\n", counter);
/* Flushes the printed string to stdout */
fflush(stdout);
kill(pid, SIGUSR1);
}

И handler2:
void handler2(int sig)
{
counter += 3;
printf("counter = %d\n", counter);
exit(0);
}

Программа связывает первую работающую функцию с текущим процессом.
Если текущий процесс окажется не основным, включится вторая функция.

