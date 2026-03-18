#!/bin/bash

# Скрипт для запуска локального сервера Hugo
# Использование: ./serve.sh

echo "🚀 Запускаю Hugo сервер..."
echo "📝 Откроется http://localhost:1313"
echo "🔄 Автоперезагрузка включена"
echo ""
echo "Для остановки нажми Ctrl+C"
echo ""

hugo server -D --disableFastRender --noHTTPCache
