#!/bin/bash

if [["`dotnet --list-sdks`" == *"3.1"*]]; then
dotnet publish -c Release --framework netcoreapp3.1 --runtime osx-x64
cp -rf attributes/* bin/Release/netcoreapp3.1/osx-x64/.
mv bin/Release/netcoreapp3.1/osx-x64 ../FBQuickCommenterApp
echo "-------------------"
echo "Установка завершена!"
echo "Чтобы запустить программу, введите комманду: cd ~/Desktop/FBQuickCommenterApp && ./FB.QuickCommenter"
echo "Не забудьте изменить комментарии в папке comments и ссылки на фото в папке photos!"
echo "Без аккаунтов приложение работать не будет! Измените файл accounts.txt"
echo "-------------------"
else
	echo ".NET not installed."
	echo "Link: https://dotnet.microsoft.com/download/dotnet/thank-you/sdk-3.1.117-macos-x64-installer"
	echo "После установки, удалите папку FB.QuickCommenter с рабочего стола, перезапустите терминал и попробуйте ещё раз"
fi