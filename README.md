# Мой Hugo блог

Минималистичный блог на Hugo в стиле [Overreacted.io](https://overreacted.io) Dan Abramov.

## 🚀 Быстрый старт

### Локальная разработка

1. **Установи Hugo Extended** (версия 0.140+):
   ```bash
   # macOS
   brew install hugo
   
   # Linux
   wget https://github.com/gohugoio/hugo/releases/download/v0.140.2/hugo_extended_0.140.2_Linux-64bit.tar.gz
   tar -xzf hugo_extended_0.140.2_Linux-64bit.tar.gz
   sudo mv hugo /usr/local/bin/
   ```

2. **Клонируй репозиторий**:
   ```bash
   git clone https://github.com/username/blog.git
   cd blog
   ```

3. **Запусти локальный сервер**:
   ```bash
   hugo server -D
   ```
   
   Открой http://localhost:1313

### Публикация на GitHub Pages

1. **Создай репозиторий** `username.github.io` на GitHub

2. **Настрой GitHub Pages**:
   - Settings → Pages
   - Source: GitHub Actions

3. **Запуши код**:
   ```bash
   git remote add origin https://github.com/username/username.github.io.git
   git add .
   git commit -m "Initial commit"
   git push -u origin main
   ```

Сайт автоматически соберётся и задеплоится на `https://username.github.io`

## ✍️ Создание постов

```bash
# Новый пост
hugo new content/posts/my-new-post.md
```

Структура поста:
```markdown
---
title: "Заголовок поста"
date: 2024-03-18T12:00:00+03:00
draft: false
---

Содержание поста в Markdown...
```

## 🎨 Кастомизация стилей

Все стили находятся в `static/css/style.css`. 

### CSS-переменные для быстрой настройки:

```css
:root {
  /* Цвета */
  --bg-primary: #ffffff;        /* Фон страницы */
  --text-primary: #222222;      /* Основной текст */
  --text-link: #d23669;         /* Ссылки */
  --border-color: #e0e0e0;      /* Границы */
  
  /* Типографика */
  --font-sans: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto;
  --font-size-base: 18px;       /* Базовый размер шрифта */
  --line-height-base: 1.7;      /* Межстрочный интервал */
  
  /* Ширина контента */
  --container-width: 680px;     /* Максимальная ширина */
}
```

### Тёмная тема

Тёмная тема включается автоматически по настройке системы (`prefers-color-scheme: dark`).

Чтобы изменить цвета тёмной темы, редактируй блок:
```css
@media (prefers-color-scheme: dark) {
  :root {
    --bg-primary: #1a1a1a;
    --text-primary: #eeeeee;
    /* ... */
  }
}
```

### Примеры кастомизации

**Изменить цвет ссылок:**
```css
:root {
  --text-link: #0066cc;
  --text-link-hover: #0052a3;
}
```

**Изменить шрифт:**
```css
:root {
  --font-sans: "Inter", "Helvetica Neue", Arial, sans-serif;
}
```

**Увеличить ширину контента:**
```css
:root {
  --container-width: 800px;
}
```

## 📝 Конфигурация

Основные настройки в `hugo.toml`:

```toml
baseURL = 'https://username.github.io/'
title = 'Мой блог'

[params]
  author = "Ваше имя"
  description = "Блог о технологиях"
```

## 📂 Структура проекта

```
.
├── .github/
│   └── workflows/
│       └── hugo.yml          # GitHub Actions для деплоя
├── archetypes/
│   └── default.md            # Шаблон для новых постов
├── content/
│   └── posts/                # Все посты здесь
│       ├── hello-world.md
│       └── perfect-setup.md
├── layouts/
│   ├── _default/
│   │   ├── baseof.html       # Базовый HTML шаблон
│   │   ├── list.html         # Список постов (главная)
│   │   └── single.html       # Отдельный пост
│   └── partials/
│       ├── header.html       # Шапка сайта
│       └── footer.html       # Подвал
├── static/
│   └── css/
│       └── style.css         # 🎨 ВСЕ СТИЛИ ЗДЕСЬ
├── hugo.toml                 # Конфигурация Hugo
└── README.md                 # Этот файл
```

## 🛠 Полезные команды

```bash
# Локальный сервер с драфтами
hugo server -D

# Сборка для продакшена
hugo --gc --minify

# Создать новый пост
hugo new content/posts/название.md

# Очистить кеш
hugo mod clean
```

## 📚 Ресурсы

- [Hugo Documentation](https://gohugo.io/documentation/)
- [Markdown Guide](https://www.markdownguide.org/)
- [Overreacted Source](https://github.com/gaearon/overreacted.io) — оригинал для вдохновения

## 💡 Фичи

- ✅ Автоматический деплой на GitHub Pages
- ✅ Тёмная/светлая тема
- ✅ Адаптивный дизайн
- ✅ Подсветка синтаксиса
- ✅ RSS feed
- ✅ Время чтения постов
- ✅ Чистый минималистичный дизайн
- ✅ Легко кастомизируется через CSS-переменные

## 📄 Лицензия

MIT — делай что хочешь!
