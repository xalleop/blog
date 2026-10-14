---
title: "Контакты"
date: 2026-03-18T12:00:00+03:00
draft: false
type: "page"
---

Такие времена, что не понятно, какой канал связи будет работать, а какой нет. Кажется надежной вот эта веб-форма. Заполните её, и я получу ваше сообщение на  email.

<!-- Это форма отправки сообщения formspree.io  -->

<form
  action="https://formspree.io/f/mjygalne"
  class="fs-form"
  target="_top"
  method="POST"
>
  <div class="fs-field">
    <label class="fs-label" for="name">Кто вы</label>
    <input class="fs-input" id="name" name="name" required />
  </div>
  <div class="fs-field">
    <label class="fs-label" for="email">Email</label>
    <input class="fs-input" id="email" name="email" required />
  </div>
  <div class="fs-field">
    <label class="fs-label" for="number">Ваш телефон или мессенджер (ник)</label>
    <input 
      class="fs-input" 
      id="number" 
      name="number" 
      placeholder="(XXX)XXXXXXX, t.me/nickname, etc."
    />
  </div>
  <div class="fs-field">
    <label class="fs-label" for="message">Сообщение</label>
    <textarea
      class="fs-textarea"
      id="message"
      name="message"
      required
    ></textarea>
  </div>
  <div class="fs-button-group">
    <button class="fs-button" type="submit">Отправить</button>
  </div>
</form>
