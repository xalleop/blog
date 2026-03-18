#!/bin/bash

# Скрипт для создания нового поста
# Использование: ./new-post.sh "Название поста"

if [ -z "$1" ]; then
    echo "❌ Укажи название поста!"
    echo "Использование: ./new-post.sh \"Название поста\""
    exit 1
fi

TITLE="$1"
SLUG=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | tr -cd '[:alnum:]-')
DATE=$(date +"%Y-%m-%dT%H:%M:%S%:z")
FILEPATH="content/posts/${SLUG}.md"

cat > "$FILEPATH" << EOF
---
title: "$TITLE"
date: $DATE
draft: false
---

Начни писать здесь...

## Подзаголовок

Твой контент.

\`\`\`bash
# Пример кода
echo "Hello, world!"
\`\`\`
EOF

echo "✅ Пост создан: $FILEPATH"
echo "🚀 Запусти 'hugo server -D' для предпросмотра"

# Открыть файл в редакторе (раскомментируй нужное)
# code "$FILEPATH"      # VS Code
# vim "$FILEPATH"       # Vim
# nano "$FILEPATH"      # Nano
