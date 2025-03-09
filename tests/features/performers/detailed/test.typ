#import "/src/export.typ": gost

#show: gost.with(
  hide-title: true,
  performers: (
    "Всероссийский институт научной и технической информации Российской академии наук (ВИНИТИ РАН)",
    (
      name: "М.Р. Биктимиров", 
      position: 
        "ВРИО директора ВИНИТИ РАН," + 
        "канд. техн. наук",
      part: "введение, раздел 1"
    ),
    (
      name: "Е.О. Дмитриева", 
      position: 
        "Руководитель НИР,\n" +
        "зав. отделением ВИНИТИ РАН,\n" +
        "канд. техн. наук",
      part: "раздел 1, 2"
    ),
    (
      name: "В.Н. Белоозеров",
      position: 
        "Вед. науч. сотр.," +
        "канд. филол. наук",
      part: "раздел 1, 2"
    ),
    (
      name: "С.В. Корешкова",
      position: "Ст. науч. сотр.",
      part: "раздел 2"
    ),
    (
      name: "Т.Н. Дягилева",
      position: "Ведущий инженер",
      part: "раздел 2"
    ),
    (
      name: "Е.П. Субботова",
      position: "Специалист I кат.",
      part: "раздел 2"
    ),
    (
      name: "И.М. Соловьева",
      position: "Нормоконтроль",
    ),

    "Федеральное государственное автономное научное учреждение «Центр информационных технологий в системах органов исполнительной власти» (ФГАУ ЦИТСОВ)",
    (
      name: "К.Ю. Тархов",
      position: "Начальник отдела регистрации и учета непубликуемых документов",
      part: "раздел 2",
      co-performer: true
    ),
    (
      name: "М.Н. Скулкова",
      position: "Начальник редакционно-издательского отдела",
      part: "раздел 2",
      co-performer: true
    ),

    "ГПНТБ России",
    (
      name: "Е.М. Зайцева",
      position: "Начальник отделения научных исследований",
      part: "раздел 1, 2",
      co-performer: true
    ),
  )
)