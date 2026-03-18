# 📋 Чеклист развёртывания на GitHub Pages

Пошаговая инструкция для гарантированного успеха.

---

## ✅ Перед началом

- [ ] Hugo установлен и работает (`hugo version`)
- [ ] Git установлен (`git --version`)
- [ ] Есть аккаунт на GitHub
- [ ] Блог работает локально (`hugo server -D`)

---

## 1️⃣ Подготовка репозитория

- [ ] Создал репозиторий `username.github.io` на GitHub
- [ ] Выбрал **Public** (не Private!)
- [ ] НЕ добавлял README, .gitignore при создании

---

## 2️⃣ Настройка hugo.toml

- [ ] Открыл `hugo.toml`
- [ ] Изменил `baseURL` на `https://username.github.io/`
- [ ] Заменил `username` на свой GitHub username
- [ ] Изменил `title` и `author` в `[params]`
- [ ] Сохранил файл

**Пример:**
```toml
baseURL = 'https://johndoe.github.io/'
title = 'Блог Джона Доу'

[params]
  author = "John Doe"
  description = "Мысли о коде и технологиях"
```

---

## 3️⃣ Настройка GitHub Pages

- [ ] Зашёл в Settings репозитория
- [ ] Открыл раздел **Pages** (слева в меню)
- [ ] В **Source** выбрал **GitHub Actions** (не Deploy from a branch!)
- [ ] Сохранил настройки

---

## 4️⃣ Первый деплой

В терминале в папке с блогом:

```bash
# Инициализируй git (если ещё не сделал)
git init

# Добавь все файлы
git add .

# Создай первый коммит
git commit -m "Initial commit: Hugo blog"

# Установи ветку main
git branch -M main

# Добавь remote (замени username на свой!)
git remote add origin https://github.com/username/username.github.io.git

# Запуш код
git push -u origin main
```

- [ ] Выполнил все команды без ошибок
- [ ] Код появился на GitHub

---

## 5️⃣ Проверка деплоя

- [ ] Зашёл на вкладку **Actions** в репозитории
- [ ] Увидел запущенный workflow "Deploy Hugo site to GitHub Pages"
- [ ] Workflow завершился с зелёной галочкой ✅
- [ ] Подождал 2-3 минуты

---

## 6️⃣ Проверка сайта

- [ ] Открыл `https://username.github.io`
- [ ] Сайт загрузился
- [ ] Стили применились корректно
- [ ] Посты отображаются
- [ ] Можно кликать по ссылкам

---

## 🔧 Если что-то пошло не так

### Workflow упал с ошибкой

1. Открой Actions → кликни на упавший workflow
2. Посмотри логи ошибки
3. Частые причины:
   - Неправильный `baseURL` в `hugo.toml`
   - Отсутствует файл `.github/workflows/hugo.yml`
   - Синтаксическая ошибка в шаблонах

### Сайт открывается, но нет стилей

1. Проверь `baseURL` — должен быть `https://username.github.io/` (со слешем!)
2. Очисти кеш браузера (Cmd+Shift+R или Ctrl+F5)
3. Проверь консоль браузера (F12) — есть ли ошибки 404?

### Страница показывает 404

1. Подожди 5 минут — GitHub Pages иногда медленный
2. Проверь Settings → Pages — источник должен быть GitHub Actions
3. Проверь, что workflow отработал успешно

---

## 🚀 Следующие шаги

- [ ] Написал первый пост
- [ ] Изменил стили под себя
- [ ] Добавил свои контакты/социалки
- [ ] Настроил кастомный домен (опционально)

---

## 📝 Ежедневный workflow

```bash
# 1. Создай новый пост
./new-post.sh "Название статьи"

# 2. Отредактируй пост
code content/posts/...

# 3. Проверь локально
./serve.sh

# 4. Задеплой
git add .
git commit -m "Новый пост: Название"
git push
```

Через 2-3 минуты пост появится на сайте! 🎉

---

**Проблемы?** Открой issue или посмотри [Hugo Docs](https://gohugo.io/documentation/)
