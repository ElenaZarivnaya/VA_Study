#language: ru

@tree

Функционал:  Формирование отчета D2001 Продажи по возвратам

Как CI
формирую отчет D2001 Продажи
что бы посмотреть объем продаж

Контекст: Открытие тест-клиента и загрузка данных
	И я подключаю TestClient "ИмяКлиента" логин "CI" пароль "CI"
	И я закрываю все окна клиентского приложения
	И я загружаю документы возврата
	И Я провожу документы возврата
	И я закрываю все окна клиентского приложения
		
Сценарий: Формирование отчета "D2001 Продажи" по возвратам
	* Открытие и формирование отчета D2001 Продажи
		И В командном интерфейсе я выбираю 'Отчеты' 'D2001 Продажи'
	* Установка отборов
		И я нажимаю на кнопку с именем 'FormChangeVariant'
		И в таблице "SettingsComposerSettingsDataParameters" я перехожу к строке:
			| 'Значение'          | 'Параметр'       |
			| 'Произвольная дата' | 'Начало периода' |
		И в таблице "SettingsComposerSettingsDataParameters" я устанавливаю флаг с именем 'SettingsComposerSettingsDataParametersUse'
		И в таблице "SettingsComposerSettingsDataParameters" в поле с именем 'SettingsComposerSettingsDataParametersDate' я ввожу текст '01.12.2022  0:00:00'
		И в таблице "SettingsComposerSettingsDataParameters" я перехожу к строке:
			| 'Значение'          | 'Параметр'      |
			| 'Произвольная дата' | 'Конец периода' |
		И в таблице "SettingsComposerSettingsDataParameters" я устанавливаю флаг с именем 'SettingsComposerSettingsDataParametersUse'
		И в таблице "SettingsComposerSettingsDataParameters" в поле с именем 'SettingsComposerSettingsDataParametersDate' я ввожу текст '31.12.2022 23:59:59'
		И в таблице "SettingsComposerSettingsDataParameters" я перехожу к строке:
			| 'Параметр'  |
			| 'Период'    |
		И в таблице "SettingsComposerSettingsDataParameters" я снимаю флаг с именем 'SettingsComposerSettingsDataParametersUse'
		И я нажимаю на кнопку с именем 'FormEndEdit'
	* Проверка. Отчет равен макету
		И я нажимаю на кнопку с именем 'FormGenerate'
		И Табличный документ "Result" равен макету "Возвраты"