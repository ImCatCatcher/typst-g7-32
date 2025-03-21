#import "/src/export.typ": gost, abstract, annexes, annex-heading
#import "@preview/numberingx:0.0.1"

#set text(font: "Times New Roman")

// Нумерация с использованием кириллицы
#set enum(numbering: numberingx.formatter("{lower-russian})"))

#show: gost.with(
  ministry: "Министерство образования и науки Российской Федерации
  Федеральное государственное автономное образовательное учреждение высшего образования",
  organization: (
    full: "Национальный исследовательский томский политехнический университет", 
    short: "ФГАОУ ВО НИ ТПУ"
  ),
  udk: "681.784.43-026.26(047.31)",
  gos-no: "115123110194",
  inventory-no: "20151114-НИР-005",
  approved-by: (name: "А.Н. Дьяченко", position: "Проректор по научной работе и инновациям", year: auto),
  agreed-by: (name: "В.И. Дорожкин", position: "Директор ВНИИВСГЭ", year: 2017),
  performers: (
    (name: "Е.И. Козлова", position: "Научн. сотр., канд. пед. наук", part: "раздел 1"), 
    (name: "Ю.Г. Спицын", position: "Руководитель НИР, зам. директора по научной работе, д-р социол. наук", co-performer: true, part: "раздел 1, 2"),
    ("М.А. Филимонова", "Мл. научн. сотр., канд. филол. наук", true, "заключение")
  ),
  report-type: "отчёт",
  about: "О научно-исследовательской работе", 
  bare-subject: false,
  research: "Доклинические исследования радиофармацевтического препарата на основе меченного технецием-99М доксорубицина для сцинтиграфической визуализации злокачественных новообразований и прогноза эффективности химиотерапии",
  subject: "Исследование механизма действия и фармакокинетики РФМ",
  stage: (type: "заключительный", num: 2),
  part: 1,
  manager: (name: "Плющев Ю.Б.", position: "Преподаватель, \nдоцент кафедры 307"),
  city: "Москва",
  year: auto,
  force-performers: false,
  hide-title: false
)

#abstract("шаблон", "typst", "государственные стандарты", "оформление документов", "система вёрстки", "автоматизация")[
Настоящий документ представляет собой описание шаблона typst-g7-32, разработанного для системы вёрстки #link("https://typst.app/")[typst] с целью автоматизации создания документов, соответствующих государственным стандартам. Шаблон упрощает процесс оформления, в частности, титульного листа, благодаря функции `gost.with`, которая позволяет гибко настраивать отображение информации и автоматически подставлять текущий год.

В документе рассмотрены основные элементы шаблона, включая оформление таблиц, блоков кода и изображений, а также детально описана работа с аргументами функции `gost.with` для кастомизации титульной страницы.  Представленный шаблон предназначен для пользователей системы typst, стремящихся к созданию стандартизированных документов с минимальными усилиями.
]

#outline()

= Введение

Шаблон typst-g7-32 предназначен для создания документов в строгом соответствии с ГОСТ. Он упрощает оформление титульного листа, автоматизирует подстановку даты и позволяет легко управлять отображением информации.


= Документация шаблона Typst

Этот документ описывает особенности использования шаблона typst-g7-32 для системы вёрстки #link("https://typst.app/")[typst]. Ниже приведены примеры оформления элементов, таких как таблицы, блоки кода и изображения, а также подробное описание работы с аргументами шаблона через функцию `gost.with`.

= Основные элементы шаблона

Шаблон typst-g7-32 позволяет создавать документы, оформленные в строгом соответствии с государственными стандартами. 

== Таблицы

Для создания таблиц используется функция `table()`, обёрнутая в макрос `#figure` для добавления подписи. Пример показан на таблице @example-table.

#figure(
  table(
    columns: 4,
    table.header(
      [Заголовок 1], [Заголовок 2], [Т], [Заголовок 4]
    ),
    [Проверка], [Проверка], [Проверка], [Проверка],
    [Проверка], [Проверка], [Проверка], [Проверка],
  ),
  caption: [Пример таблицы с данными]
) <example-table>

== Блоки кода

Чтобы оформить блоки кода в документе, можно использовать синтаксис, похожий на Markdown. Пример указан на листинге @example-code:

#figure(
  ```typst
  // Пример кода на Typst:
  #import "package.typ"

  // Функция вывода сообщения
  print("Hello, world!")
  ```,
  caption: [Пример кода на Typst]
) <example-code>

Этот блок кода демонстрирует базовую структуру программы на Typst.

== Формулы

Чтобы оформить формулы в документе, можно использовать синтаксис typst-math. Примеры демонстрируют использование формул в шаблоне: 

  Формула @example-formula-first показывает как применять сложные функции, формула  @example-formula-second демонстрирует как можно оформить матрицы, а формула @example-formula-third – использование типов и обозначений.


$ sum_(k=0)^n k = 1 + ... + n = (n(n+1)) / 2 $
<example-formula-first>


$ mat(1, 2, 3; 4, 5, 6; 7, 8, 9) * x = pi * psi(alef/x) $ 
<example-formula-second>

$ cal(A) := { x in RR | x "натуральное" } $
<example-formula-third>

== Изображения

Изображения добавляются с помощью функции `image()` внутри макроса `#figure`. Пример вставки изображения указан на рисунке @example-image.

#figure(
  image("/tests/assets/home.jpg", width: 60%),
  caption: "Пример изображения"
) <example-image>

= Работа с аргументами шаблона в gost.with

Функция `gost.with` принимает множество аргументов, позволяющих настраивать титульную страницу и другие элементы документа. 

Рассмотрим основные возможности:

- Обязательные и необязательные аргументы. 
  Многие параметры могут быть опущены, если вы не хотите, чтобы соответствующая информация отображалась на титульном листе.
- Параметр auto (автоматический год).  
  В аргументах, таких как `approved-by.year` или `year`, можно использовать значение `auto`.

- Примеры аргументов:  
  В заголовке шаблона задаются такие параметры, как:
  + `ministry-name` – название министерства.
  + `organization` – информация об учреждении (полное и сокращённое наименования).
  + `performers` – список исполнителей с указанием их позиций.
  
Если требуется убрать определённые элементы с титульного листа, достаточно не передавать соответствующие аргументы в вызове `gost.with`. Это позволяет гибко настраивать вид титульного листа под конкретные задачи документа.

== Работа с аргументами шаблона <with-numbering>

Как уже отмечалось, функция `gost.with` позволяет детально настраивать титульную страницу. Рассмотрим ключевые моменты:

- При передаче параметра `year: auto` текущий год будет вычисляться автоматически.
- Если не требуется выводить определённый элемент (например, номер инвентаризации), соответствующий аргумент можно не указывать.  
- Все аргументы передаются в виде именованных параметров, что обеспечивает гибкость конфигурации и позволяет изменять оформление документа без изменения структуры исходного файла. @petrov2021analiz

= Заключение <conclusion>

Шаблон typst-g7-32 для Typst значительно упрощает подготовку документов, соответствующих государственным стандартам. Он обеспечивает удобное создание таблиц, блоков кода и изображений, а гибкая настройка через функцию `gost.with` позволяет автоматически подставлять дату и исключать ненужные элементы с титульной страницы. Используйте данный шаблон для создания качественных и стандартизированных документов.

#bibliography("references.bib")

#show: annexes

= Изображения в приложениях
Пример вставки изображения в приложение указан на рисунке @annex-image.

#figure(
  image("/tests/assets/nature.jpg", width: 40%),
  caption: "Пример изображения"
) <annex-image>

== Изображения в под-приложениях
Пример вставки изображения в под-приложение указан на рисунке @annex-image-3.
#figure(
  image("/tests/assets/abstract.jpg", width: 40%),
  caption: "Пример изображения"
) <annex-image-3>

= Блоки кода
Чтобы оформить блоки кода в документе, можно использовать синтаксис, похожий на Markdown. Пример указан на листинге @annex-code:

#figure(
  ```typst
  // Пример кода на Typst:
  #import "package.typ"

  // Функция вывода сообщения
  print("Hello, world!")
  ```,
  caption: [Пример кода на Typst]
) <annex-code>

= Формулы
Чтобы оформить формулы в документе, можно использовать синтаксис typst-math. Примеры демонстрируют использование формул в шаблоне:

$ sum_(k=0)^n k = 1 + ... + n = (n(n+1)) / 2 $
<annex-formula>

как оформлять таблицы сказано в приложении @annex-tables, а также в разделе с нумерацией @with-numbering.

== Таблицы <annex-tables>

Для создания таблиц используется функция `table()`, обёрнутая в макрос `#figure` для добавления подписи. Пример показан на таблице @annex-table.

#figure(
  table(
    columns: 4,
    table.header(
      [Заголовок 1], [Заголовок 2], [Заголовок 3], [Заголовок 4]
    ),
    [Проверка], [Проверка], [Проверка], [Проверка],
    [Проверка], [Проверка], [Проверка], [Проверка],
  ),
  caption: [Пример таблицы с данными]
) <annex-table>

#annex-heading("справочное", level: 1)[Приложение с указанием статуса]
#lorem(100)

#annex-heading("справочное", level: 2)[Приложение второго уровня со статусом]
#lorem(100)
