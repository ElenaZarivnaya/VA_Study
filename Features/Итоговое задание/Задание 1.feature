#language: ru

@tree

Функционал: Загрузка картинки в справочник Товары

Как Тестировщик я хочу
хочу прикрепить картинку к товару
чтобы протестировать новую фичу

Контекст: Открытие тест-клиента
	Дано Я открыл новый сеанс TestClient или подключил уже существующий
	И я закрываю все окна клиентского приложения
	Когда удаление данных из базы
	И я проверяю или создаю для справочника "Товары" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Родитель' | 'ЭтоГруппа' | 'Код'       | 'Наименование' | 'Артикул' | 'Поставщик'                                                              | 'ФайлКартинки' | 'Вид'                    | 'Штрихкод' | 'Описание'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | 'ВТ_Вес' |
		| 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8ea92d97a749' | 'False'           | ''         | 'False'     | '000000030' | 'Дискета'      | 'Kol67'   | 'e1cib/data/Справочник.Контрагенты?ref=a9bd00055d49b45e11dbd7c695f19911' | ''             | 'Enum.ВидыТоваров.Товар' | ''         | '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"><html><head><meta name="viewport" content="initial-scale=1.0, width=device-width"></meta><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"></meta><meta name="format-detection" content="telephone=no"></meta><style type="text/css">\nbody{margin:0px;padding:8px;overflow:auto;width:100%;height:100%;}\np{line-height:1.15;margin:0px;}\nol,ul{margin-top:0px;margin-bottom:0px;}\nimg{border: none;}\n</style></head><body>\n<p>Колбаса "Докторская" вареная высшего сорта из охлажденного мяса</p>\n<p><span style=" font-weight: bold;">Вес - </span> 500 г.</p>\n</body></html>' |          |
	
Сценарий: загрузка картинки в справочник Товары
	И Я открываю навигационную ссылку "e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8ea92d97a749"
	И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	И в поле с именем 'Наименование' я ввожу текст 'Рисунок Дискеты'
	И я выбираю файл "$КаталогПроекта$\Features\Итоговое задание\Картинка.jpeg"
	И я нажимаю на кнопку с именем 'ВыбратьФайлСДискаИЗаписать'"
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	Когда открылось окно 'Файлы'
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Когда открылось окно 'Дискета (Товар) *'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Дискета (Товар) *' в течение 20 секунд			