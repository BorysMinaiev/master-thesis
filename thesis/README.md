# itmo-student-thesis.cls

Данный стилевой файл для LaTeX предлагается для использования на кафедре "Компьютерные технологии" [Университета ИТМО](http://www.ifmo.ru)
для оформления пояснительных записок к бакалаврским работам и магистерским диссертациям.

Преимущества:
* довольно хорошо соответствует ГОСТ Р 7.0.1-2011 (на диссертации), в том числе в части списка литературы;
* существует в виде одного cls-файла, который надо включать через `\documentclass`;
* генерирует титульные страницы и даже задания с аннотациями.

Недостатки:
* использует довольно свежие возможности LaTeX (например, библиография делается связкой `biblatex`/`biber`), поэтому может не заработать на, скажем, MikTeX версии 2005 года;
* включает довольно много пакетов, что может сковывать руки тем, кто использует альтернативы;
* все еще оформлен не по правилам оформления пакетов для LaTeX --- в частности, сообщения об ошибках не оптимизировались вообще.

## Опции пакета
* `specification` --- если эта опция присутствует, будет генерироваться задание. Если задание у Вас уже готово и подписано, а копировать его содержимое
                   в LaTeX-команды лениво, опцию указывать не нужно, и тогда стилевик не будет жаловаться на отсутствие соответствующих команд.
* `annotation` --- если эта опция присутствует, будет генерироваться аннотация. Если аннотация у Вас уже готова и подписана, а копировать ее содержимое
                   в LaTeX-команды лениво, опцию указывать не нужно, и тогда стилевик не будет жаловаться на отсутствие соответствующих команд.
* `times` --- если эта опция присутствует, использует близкое подобие шрифта Times New Roman для набора текста. Для этого требуется довольно старый и кривой пакет `pscyr`, который не
              устанавливается по умолчанию в большинстве дистрибутивов.

## Команды разметки страниц, глав и разделов
* `\appendix` --- переключает нумерацию глав на "ПРИЛОЖЕНИЕ XX", где XX --- номер приложения русскими буквами.
* `\chapterconclusion` --- создает ненумерованный раздел "Выводы по главе XX", где XX --- номер текущей главы.
* `\initializefrontsections` --- ничего не делает, существует для совместимости со старым стилевым пакетом.
* `\maketitle{...}` --- создает титульную страницу (и задание с аннотацией, если указано в опциях) для бакалаврской работы (первый аргумент --- Бакалавр)
                        или магистерской диссертации (первый аргумент --- Магистр).
* `\startappendices` --- то же самое, что `\appendix`, существует для совместимости со старым стилевым пакетом.
* `\startconclusionpage` --- создает ненумерованную главу "ЗАКЛЮЧЕНИЕ".
* `\startprefacepage` --- создает ненумерованную главу "ВВЕДЕНИЕ".
* `\startthechapters` --- ничего не делает, существует для совместимости со старым стилевым пакетом.
* `\printmainbibliography` --- создает список использованных источников (с корректным заголовком и добавлением его в оглавление).
* `\printannobibliography` --- создает список публикаций без заголовка и с уменьшенным шрифтом, что используется в аннотации при указании своих публикаций.

## Команды определения общих данных
* `\author{...}{...}` --- устанавливает фамилию, имя, отчество (первый аргумент) и фамилию и.о. (второй аргумент) автора работы.
* `\publishyear{...}` --- устанавливает год выполнения работы.
* `\studygroup{...}` --- устанавливает учебную группу.
* `\supervisor{...}{...}{...}{...}` --- устанавливает фамилию, имя, отчество (первый аргумент), фамилию и.о. (второй аргумент), 
                                        степень-звание (третий аргумент) и место работы (четвертый аргумент) научного руководителя.
* `\title{...}` --- устанавливает название работы.
* `\addconsultant{...}{...}` --- добавляет консультанта: фамилию и.о. (первый аргумент), степень-звание (второй аргумент).
* `\startdate{день}{месяц}{год}` --- устанавливает дату начала работы (поля "Дата выдачи задания" и "Задание принял к исполнению"). Можно не устанавливать.
* `\finishdate{день}{месяц}{год}` --- устанавливает дату окончания работы (поле "Срок сдачи студентом законченной работы"). Можно не устанавливать.
* `\defencedate{день}{месяц}{год}` --- устанавливает дату защиты. Можно не устанавливать.
* `\secretary{...}` --- устанавливает фамилию и.о. секретаря ГЭК.

## Команды переопределения данных по умолчанию
* `\degreehost` --- переопределяет место выполнения работы.
* `\chair{...}` --- переопределяет название кафедры.
* `\chairhead{...}{...}` --- переопределяет фамилию и.о. (первый аргумент) и степень-звание (второй аргумент) заведующего кафедрой.
* `\city{...}` --- переопределяет город выполнения работы.
* `\faculty{...}` --- переопределяет название факультета.
* `\specialty{...}` --- переопределяет название специальности.
* `\specialization{...}` --- переопределяет поле "Направленность (профиль), специализация".
* `\university{...}` --- переопределяет шапку документов, соответствующую полному названию университета.

## Команды определения данных задания
* `\technicalspec{...}` --- определяет поле "Техническое задание и исходные данные к работе".
* `\plannedcontents{...}` --- определяет поле "Содержание выпускной квалификационной работы".
* `\plannedgraphics{...}` --- переопределяет поле "Перечень графического материала".
* `\plannedsources{...}` --- определяет поле "Исходные материалы и пособия".
* `\addstage{...}{...}` --- добавляет строку к календарному плану: название этапа (первый аргумент) и срок его выполнения (второй аргумент).

## Команды определения данных аннотации
* `\researchaim{...}` --- определяет поле "Цель исследования".
* `\researchtargets{...}` --- определяет поле "Задачи, решаемые в ВКР".
* `\advancedtechnologyusage{...}` --- определяет поле "Использование современных пакетов".
* `\researchsummary{...}` --- определяет поле "Краткая характеристика полученных результатов".
* `\researchfunding{...}` --- определяет поле "Гранты, полученные при выполнении работы".
* `\researchpublications{...}` --- определяет поле "Наличие публикаций и выступлений на конференциях".

## Известные баги
* При использовании опции `times` (то есть, пакета `pscyr`) и сборки текста через `latex` (но не `pdflatex`) из текста пропадают кавычки-елочки
  и еще некоторые символы. Это, вероятнее всего, баг пакета `pscyr`. Можно пофиксить это путем применения `sed` к файлу `*.dvi`, но гораздо приятнее
  все-таки использовать `pdflatex`. (Upstream)
* Некоторые вещи, например, число страниц, являются гиперссылками (под управлением пакета `hyperref`), хотя не должны. (Issue [#3](https://github.com/mbuzdalov/latex-styles/issues/3))
* В аннотации все еще не считаются источники по категориям, только их общее число (Issue [#10](https://github.com/mbuzdalov/latex-styles/issues/10)).

## Часто задаваемые вопросы
* *Правда ли, что официальное название Университета ИТМО начинается с маленькой буквы? (федеральное...)* Да, правда. Текущие [реквизиты ИТМО](http://www.ifmo.ru/file/stat/26/obschiye_rekvizity.doc),
действующие с июня 2014 года, предписывают начинать с маленькой буквы, и предыдущая их ревизия делала то же самое.

## Описание изменений в версиях
Версия | Изменения
-------|----------
1.1.2.b1 | Добавлена команда \secretary, для указания секретаря ГЭК.
1.1.2  | Согласно изменениям в регламентах, на обратную сторону титульного листа добавлено поле с датой принятия работы. Уменьшен шрифт на соответствующей странице. \unknowndate теперь занимает ощутимо меньше места.
1.1.1  | Теперь работает с biblatex-3.4 и идущим с ним в комплекте biblatex-gost.
1.1.0.b12 | Специальность у бакалавров исправлена на 01.03.02.
1.1.0.b11 | Добавлена поддержка указания дат выдачи задания (\startdate{день}{месяц}{год}), срока сдачи работы (\finishdate{...}{...}{...}), даты защиты (\defencedate{...}{...}{...}). Если не указывать, будет генерироваться обычное место для заполнения даты.
1.1.0.b10 | "Пояснительная записка магистерской диссертации" превращена в "магистерскую диссертацию". Выключено предупреждение при отсутствии консультантов. Изменено направление подготовки (специальность) по умолчанию (добавлен номер 01.04.02). Добавлены направленности (профили) по умолчанию, соответствующие реальной ситуации на кафедре КТ, разные для магистров и бакалавров. В задании поле "Студенту" переименовано в "Студент". Немного изменена верстка формальных страниц.
1.1.0.b9 | По многочисленным просьбам трудящихся и не очень, магистерская диссертация снова называется магистерской диссертацией.
1.1.0.b8 | Тире в страничных интервалах в библиографии --- теперь endash (Issue [#11](https://github.com/mbuzdalov/latex-styles/issues/11)).
1.1.0.b7 | Нумерация страниц --- сверху по центру (Issue [#12](https://github.com/mbuzdalov/latex-styles/issues/12)).
1.1.0.b6 | Выключены переносы в оглавлении (Issue [#5](https://github.com/mbuzdalov/latex-styles/issues/5)).
1.1.0.b5 | Теперь генерируются и задания тоже (Issue [#7](https://github.com/mbuzdalov/latex-styles/issues/7)). В связи с полной сменой шаблонов сгорела необходимость в правильных подчеркиваниях (Issue [#1](https://github.com/mbuzdalov/latex-styles/issues/1)). Пока не считаются источники по категориям (Issue [#10](https://github.com/mbuzdalov/latex-styles/issues/10)).
1.1.0.b4 | Удалена опция `page4`, так как теперь содержательная часть всегда должна начинаться с четвертой страницы.
1.1.0.b3 | Исправлена фиксированная ширина слова ПРИЛОЖЕНИЕ в оглавлении (Issue [#2](https://github.com/mbuzdalov/latex-styles/issues/2)). Также в качестве набора шрифтов по умолчанию теперь используется Paratype.
1.1.0.b2 | Исправлена нумерация флоатов в приложениях (Issue [#6](https://github.com/mbuzdalov/latex-styles/issues/6)).
1.1.0.b1 | Исправлена нумерация списков и приложений (Issue [#8](https://github.com/mbuzdalov/latex-styles/issues/8)).
1.0.4  | Новая команда `\chapterconclusion` создает ненумерованный раздел "Выводы по главе XX", где XX --- номер текущей главы.
1.0.3  | Добавлена опция `page4` про нумерацию страниц.
1.0.2  | Нумерация листингов теперь не перезапускается в каждой главе (так как счетчик `lstlisting` определяется только после `\begin{document}`, ему не получалось убрать перезапуски в преамбуле).
1.0.1  | Исправлено название университета по умолчанию (больше нет слова "профессионального").
1.0.0  | Исходная версия (не была обозначена).

## Обратная связь
Все вопросы, пожелания, замечания, исправления пишите почтой (которую здесь не указываю) или средствами GitHub.
