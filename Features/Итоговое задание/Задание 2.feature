﻿#language: ru

@tree

Функционал: Проверка формирования отчета Остатки товаров
Как тестировщик я хочу
сформировать отчет Остатки товаров
чтобы проверить верно ли отображаются остаки на складах

Контекст: Открытие тест-клиента
	Дано Я открыл новый сеанс TestClient или подключил уже существующий
	И я закрываю все окна клиентского приложения
	Когда удаление данных из базы
	Когда экспорт общих данных
	Когда экспорт данных для отчета Остатки

Сценарий: Формируется отчет Остатки товаров (основной)
	* ПРоведение документов
		И Я открываю навигационную ссылку "e1cib/data/Документ.РасходТовара?ref=a1aa086266c6d20f11e70b13d9094c6d"
		И я нажимаю на кнопку с именем "ФормаПровестиИЗакрыть"
		И Я открываю навигационную ссылку "e1cib/data/Документ.ПриходТовара?ref=bbf30050ba5c887711e1fe5ecbd0aaeb"
		И я нажимаю на кнопку с именем "ФормаПровестиИЗакрыть"
	*Открытие отчета
		И В командном интерфейсе я выбираю 'Продажи' 'Остатки товаров'
		И я жду открытия окна "Остатки товаров" в течение 20 секунд
		И я нажимаю на кнопку с именем 'ФормаЗагрузитьВариант'
		Тогда таблица "СписокНастроек" стала равной:
			| 'Представление' |
			| 'Основной'      |			
		И в таблице "СписокНастроек" я выбираю текущую строку
		И я нажимаю на кнопку с именем 'ФормаСформировать'
		И я жду когда в табличном документе 'Результат' заполнится ячейка 'R3C1' в течение 20 секунд
	* Сверка с эталоном
		И Табличный документ "Результат" равен макету "ОтчетОстатки"