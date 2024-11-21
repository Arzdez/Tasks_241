# Проверка, что скрипт выполняется от имени root
if [ "$EUID" -ne 0 ]; then
echo "Пожалуйста, запустите скрипт с правами суперпользователя (root)."
exit 1
fi

echo "Начинаем выполнение скрипта..."

# 1. Управление пользователями

## 1.1 Добавьте пользователя user1 с оболочкой bash
useradd -m -s /bin/bash user1
if [ $? -eq 0 ]; then
echo "Пользователь user1 успешно создан с оболочкой bash."
else
echo "Ошибка при создании пользователя user1."
exit 1
fi

## 1.2 Добавьте пользователя user2 с оболочкой sh
useradd -m -s /bin/sh user2
if [ $? -eq 0 ]; then
echo "Пользователь user2 успешно создан с оболочкой sh."
else
echo "Ошибка при создании пользователя user2."
exit 1
fi

## 1.3 Установите им пароли
# Для автоматической установки паролей используем команду chpasswd
# Рекомендуется заменить 'password1' и 'password2' на безопасные пароли
echo "user1:password1" | chpasswd
echo "user2:password2" | chpasswd
echo "Пароли для user1 и user2 установлены."

# 2. Назначьте пользователю 1 группу администраторов, пользователя 2 добавьте в группу пользователя 1

## В ALT Linux группа администраторов обычно называется 'wheel'
usermod -aG wheel user1
if [ $? -eq 0 ]; then
echo "Пользователь user1 добавлен в группу wheel (администраторы)."
else
echo "Ошибка при добавлении user1 в группу wheel."
exit 1
fi

## Добавление user2 в группу user1
usermod -aG user1 user2
if [ $? -eq 0 ]; then
echo "Пользователь user2 добавлен в группу user1."
else
echo "Ошибка при добавлении user2 в группу user1."
exit 1
fi

# 3. Что такое права доступа? Выведите права доступа на файлы в директории пользователя.
echo -e "\nПрава доступа файлов в /home/user1:"
ls -l /home/user1

echo -e "\nПрава доступа файлов в /home/user2:"
ls -l /home/user2

# 4. Как изменить права на файлы? Создайте файл у которого будут всевозможные права для всех пользователей.
touch /home/user1/all_access_file
chmod 777 /home/user1/all_access_file
echo "Файл /home/user1/all_access_file создан с правами 777."

# 5. Как называется учётная запись встроенного администратора в Linux?
echo -e "\nВ Linux по умолчанию существует учётная запись суперпользователя с именем root."

# 6. Как выполнить команду от имени администратора?
echo -e "\nПример выполнения команды от имени администратора:"
echo "sudo apt update" # В ALT Linux используется другой пакетный менеджер, например, yum или dnf

# 7. Есть ли ограничения у суперпользователя?
echo -e "\nХотя суперпользователь (root) обладает полными правами в системе, существуют некоторые ограничения:"
echo "- Аппаратные ограничения: root не может изменять аппаратные настройки, такие как настройки BIOS."
echo "- Защита ядра и системных настроек: Некоторые действия могут быть ограничены политиками безопасности или модулями ядра."

# 8. Удалите пользователя 2 с помощью пользователя 1.
# Для этого необходимо выполнить следующие шаги вручную или использовать дополнительные настройки sudo
echo -e "\nШаг 8: Удаление пользователя user2 с помощью user1."
echo "Для выполнения этого шага необходимо вручную выполнить следующие команды:"
echo "1. Переключитесь на пользователя user1:"
echo " su - user1"
echo "2. Выполните удаление user2 с помощью sudo:"
echo " sudo userdel -r user2"
echo "Примечание: Убедитесь, что user1 имеет права sudo без запроса пароля или настройте соответствующим образом."

# 9. Как можно изменить владельца папки? Измените владельца папки из п. 4.
# Предполагается, что пользователь 'lunis' существует. Если нет, создадим его.
if id "lunis" &>/dev/null; then
echo "Пользователь 'lunis' уже существует."
else
useradd -m -s /bin/bash lunis
echo "lunis:passwordlunis" | chpasswd
echo "Пользователь 'lunis' создан и установлен пароль."
fi

# Изменение владельца файла
chown lunis: /home/user1/all_access_file
if [ $? -eq 0 ]; then
echo "Владелец файла /home/user1/all_access_file изменен на 'lunis'."
else
echo "Ошибка при изменении владельца файла /home/user1/all_access_file."
exit 1
fi

# Проверка изменений
echo -e "\nНовые права доступа файла /home/user1/all_access_file:"
ls -l /home/user1/all_access_file

echo -e "\nСкрипт выполнен успешно."


