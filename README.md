FB.QuickCommenter - форк [dvygolov/FB.QuickCommenter](https://github.com/dvygolov/FB.QuickCommenter) с некоторыми доработками:

- Обновлена версия API с 8.0 до 11.0
- Появилась возможность комментить под всеми постами (Опция `Q` вместо номера поста)
- Добавлена возможность прикреплять фотографии

Происходит прикрепление фотографии похожим образом с комментариями:
1. Создаётся папка `photos`, а в ней - файл `photos.txt`
2. Каждой строкой в этом файле добавляется "новая" картинка. В строке пишем прямой URL к картинке
3. Можно оставлять пустые строки либо строки с пробелом, если не нужно добавлять картинку под конкретный комментарий. 
`(номер строки в файле comments.txt = номер строки в файле photos.txt = номер коммента по счету)`

Инструкция по эксплуатации: https://www.youtube.com/watch?v=ZCZxdFVWuoY

-----

**Быстрый деплой на macOS _(Проверено на версии 0.2)_:** 
1. Установите .NET 3.1 SDK: https://dotnet.microsoft.com/download/dotnet/thank-you/sdk-3.1.117-macos-x64-installer
2. Откройте терминал и введите эту комманду: `cd ~/Desktop ; git clone https://github.com/rbeat/FB.QuickCommenter.git ; cd FB.QuickCommenter && bash a.sh`
3. Следуйте инструкции
