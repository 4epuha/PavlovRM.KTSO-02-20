Задаем длину массива:
printf("Enter length of array: ");
scanf("%d", &length);


Выделяем память для массива. Если память выделена, функция "malloc" выведет Null:
if ((array = (int * ) malloc(length * sizeof(int))) != NULL)


Если все прошло без ошибок, программа очистит выделенную память:
if (array != NULL)
{
free(array);
}
