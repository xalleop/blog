---
title: "Продвинутые возможности Hugo"
date: 2024-03-20T15:00:00+03:00
draft: false
---

Hugo поддерживает shortcodes — это мощный инструмент для расширения Markdown.
<!--More-->

## Заметки и предупреждения

Используй shortcode `note` для важных блоков:

{{< note info >}}
**Совет:** Это информационная заметка. Используй для полезных советов.
{{< /note >}}

{{< note warning >}}
**Внимание!** Это предупреждение. Обрати внимание на важные детали.
{{< /note >}}

{{< note danger >}}
**Опасно!** Критическая информация. Не игнорируй это.
{{< /note >}}

{{< note success >}}
**Отлично!** Всё работает как надо.
{{< /note >}}

## Встраивание кода

Можно вставлять интерактивные примеры:

```go
package main

import (
    "fmt"
    "time"
)

func main() {
    ticker := time.NewTicker(1 * time.Second)
    defer ticker.Stop()

    for range ticker.C {
        fmt.Println("Tick!")
    }
}
```

## Синтаксис shortcodes

Создавай свои shortcodes в `layouts/shortcodes/`:

```html
<!-- layouts/shortcodes/youtube.html -->
<iframe 
  width="560" 
  height="315" 
  src="https://www.youtube.com/embed/{{ .Get 0 }}"
  frameborder="0" 
  allowfullscreen>
</iframe>
```

Использование в посте:

```markdown
{{</* youtube dQw4w9WgXcQ */>}}
```

{{< note info >}}
Подробнее про shortcodes: [Hugo Shortcodes Documentation](https://gohugo.io/content-management/shortcodes/)
{{< /note >}}

## Полезные встроенные shortcodes

Hugo поставляется с готовыми shortcodes:

- `{{</* figure src="/img/photo.jpg" title="Подпись" */>}}`
- `{{</* gist username gist-id */>}}`
- `{{</* tweet user tweet-id */>}}`
- `{{</* instagram post-id */>}}`

Расширяй функциональность под свои нужды!
