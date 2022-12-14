#language: ru

@tree

Функционал: Заполнение заказа покупателя

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий
	И я записываю данные

Сценарий: Заполнение заказа покупателя
	* Открытие документа Заказ покупателя
		И я закрываю все окна клиентского приложения
		И В командном интерфейсе я выбираю 'Продажи' 'Заказы покупателей'
		И я нажимаю на кнопку с именем 'ListContextMenuCreate'
	* Заполнение реквизита "Партнер"
		И я нажимаю кнопку выбора у поля с именем "Partner"
		И в таблице "List" я перехожу к строке:
			| 'Наименование'       |
			| 'Розничный клиент 1' |
		И в таблице "List" я выбираю текущую строку
	* Проверка на заполнение поля Организация
		Если элемент формы с именем 'Company' стал равен '' тогда
			И я нажимаю кнопку выбора у поля с именем "Company"
			И в таблице "List" я перехожу к строке:
				| 'Наименование'           |
				| 'Собственная компания 2' |
			И в таблице "List" я выбираю текущую строку
	* Запись документа
		И я нажимаю на кнопку с именем 'FormPostAndClose'
		И я жду закрытия окна 'Заказ покупателя (создание) *' в течение 20 секунд		