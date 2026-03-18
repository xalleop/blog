# ⚡ QUICKSTART — Запусти за 5 минут

## 1️⃣ Установи Hugo

### macOS
```bash
brew install hugo
```

### Linux
```bash
wget https://github.com/gohugoio/hugo/releases/download/v0.140.2/hugo_extended_0.140.2_Linux-64bit.tar.gz
tar -xzf hugo_extended_0.140.2_Linux-64bit.tar.gz
sudo mv hugo /usr/local/bin/
```

### Windows
Скачай с https://github.com/gohugoio/hugo/releases и добавь в PATH

---

## 2️⃣ Локальный запуск

```bash
# Запусти сервер
./serve.sh

# Или вручную
hugo server -D
```

Открой http://localhost:1313 — блог работает! 🎉

---

## 3️⃣ Создай пост

```bash
# Быстрый способ
./new-post.sh "Моя первая статья"

# Или вручную
hugo new content/posts/my-post.md
```

Отредактируй файл в `content/posts/my-post.md`

---

## 4️⃣ Деплой на GitHub Pages

### Шаг 1: Создай репозиторий
- Иди на GitHub → New Repository
- Имя: `username.github.io` (замени `username` на свой)
- Public репозиторий

### Шаг 2: Настрой GitHub Pages
- Settings → Pages
- Source: **GitHub Actions** (важно!)

### Шаг 3: Запуш код
```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/username/username.github.io.git
git push -u origin main
```

### Шаг 4: Подожди 2 минуты
GitHub Actions автоматически соберёт и задеплоит сайт.

Твой блог будет на `https://username.github.io` ✨

---

## 🎨 Кастомизация стилей

Открой `static/css/style.css` и измени переменные:

```css
:root {
  --text-link: #0066ff;        /* Цвет ссылок */
  --font-size-base: 18px;      /* Размер шрифта */
  --container-width: 680px;    /* Ширина контента */
}
```

Сохрани — изменения применятся мгновенно! 🎨

---

## 📝 Готовые темы

В файле `static/css/themes.css` лежат готовые цветовые схемы:
- **COLORFUL** — яркая палитра
- **MONOCHROME** — чёрно-белый минимализм  
- **SEPIA** — винтажный стиль
- **NORD** — скандинавская палитра

Скопируй понравившуюся в `:root` блок `style.css`

---

## ❓ Что-то не работает?

### Hugo не найден
```bash
# Проверь установку
hugo version

# Если не работает — скачай бинарник вручную
wget https://github.com/gohugoio/hugo/releases/download/v0.140.2/hugo_extended_0.140.2_Linux-64bit.tar.gz
```

### Сайт не деплоится
1. Проверь Settings → Pages → Source = **GitHub Actions**
2. Проверь вкладку Actions — есть ошибки?
3. Убедись, что `hugo.toml` содержит правильный `baseURL`

### Стили не применяются
1. Очисти кеш браузера (Cmd+Shift+R / Ctrl+F5)
2. Проверь путь к CSS в `layouts/_default/baseof.html`

---

## 🚀 Полезные команды

```bash
./new-post.sh "Название"     # Новый пост
./serve.sh                   # Локальный сервер
hugo --gc --minify           # Сборка для продакшена
git add . && git commit -m "Update" && git push  # Деплой
```

---

**Всё готово! Начинай писать 🔥**
