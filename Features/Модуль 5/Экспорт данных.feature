#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: <описание фичи>

Сценарий: я записываю данные

	// Справочник.Agreements (Соглашения)

	И я проверяю или создаю для справочника "Agreements" объекты:
		| 'Ref'                                                                | 'DeletionMark' | 'Code' | 'Number' | 'Date'               | 'PartnerSegment' | 'Partner'                                                          | 'Company' | 'PriceType'                                                          | 'ItemSegment' | 'StartUsing'         | 'EndOfUse'           | 'ManagerSegment' | 'PriceIncludeTax' | 'DaysBeforeDelivery' | 'Store'                                                          | 'Type'                         | 'LegalName' | 'CurrencyMovementType'                                                                            | 'ApArPostingDetail'                   | 'StandardAgreement' | 'Kind'                        | 'UseCreditLimit' | 'CreditLimitAmount' | 'PaymentTerm' | 'Description_en'     | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Agreements?ref=b76cbacb2511e57d11ebeab0dfce224a' | 'False'        | 9      | ''       | '01.01.0001 0:00:00' | ''               | 'e1cib/data/Catalog.Partners?ref=b76cbacb2511e57d11ebeab0dfce2248' | ''        | 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb76684b9f6866' | ''            | '01.01.0001 0:00:00' | '01.01.0001 0:00:00' | ''               | 'False'           |                      | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'Enum.AgreementTypes.Customer' | ''          | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 'Enum.ApArPostingDetail.ByAgreements' | ''                  | 'Enum.AgreementKinds.Regular' | 'False'          |                     | ''            | 'Розничный клиент 1' | ''                 | ''               | ''               |

	// Справочник.Companies (Ораганизация)

	И я проверяю или создаю для справочника "Companies" объекты:
		| 'Ref'                                                               | 'DeletionMark' | 'Code' | 'Country' | 'MainCompany' | 'Partner'                                                          | 'Type'                             | 'OurCompany' | 'Description_en'         | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb76684b9f685b' | 'False'        | 2      | ''        | ''            | ''                                                                 | 'Enum.CompanyLegalType.Company'    | 'True'       | 'Собственная компания 2' | ''                 | ''               | ''               |
		| 'e1cib/data/Catalog.Companies?ref=b76cbacb2511e57d11ebeab0dfce2249' | 'False'        | 10     | ''        | ''            | 'e1cib/data/Catalog.Partners?ref=b76cbacb2511e57d11ebeab0dfce2248' | 'Enum.CompanyLegalType.Individual' | 'False'      | 'Розничный клиент 1'     | ''                 | ''               | ''               |

	И я перезаполняю для объекта табличную часть "Currencies":
		| 'Ref'                                                               | 'MovementType'                                                                                    |
		| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb76684b9f685b' | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' |

	// Справочник.ObjectStatuses (Статусы)

	И я проверяю или создаю для справочника "ObjectStatuses" объекты:
		| 'Ref'                                                                    | 'DeletionMark' | 'Parent'                                               | 'IsFolder' | 'Code' | 'SetByDefault' | 'Posting' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'UniqueID'                          |
		| 'e1cib/data/Catalog.ObjectStatuses?ref=b762b13668d0905011eb766bf96b2789' | 'False'        | 'e1cib/data/Catalog.ObjectStatuses?refName=SalesOrder' | 'False'    | 12     | 'True'         | 'True'    | 'Согласовано'    | ''                 | ''               | ''               | '_e0cb85b20091495d9bde24e1a4d1e2cb' |

	// Справочник.Partners

	И я проверяю или создаю для справочника "Partners" объекты:
		| 'Ref'                                                              | 'DeletionMark' | 'Parent' | 'Code' | 'Customer' | 'Vendor' | 'Employee' | 'Opponent' | 'ManagerSegment' | 'Description_en'     | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Partners?ref=b76cbacb2511e57d11ebeab0dfce2248' | 'False'        | ''       | 12     | 'True'     | 'False'  | 'False'    | 'False'    | ''               | 'Розничный клиент 1' | ''                 | ''               | ''               |

	// Справочник.Stores (Склады)

	И я проверяю или создаю для справочника "Stores" объекты:
		| 'Ref'                                                            | 'DeletionMark' | 'Code' | 'UseGoodsReceipt' | 'UseShipmentConfirmation' | 'Transit' | 'NegativeStockControl' | 'Description_en'                | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'False'        | 1      | 'True'            | 'True'                    | 'False'   | 'True'                 | 'Склад 1 (с контролем остатка)' | ''                 | ''               | ''               |

Сценарий: Удаление данных
	И я удаляю объекты "Справочники.Agreements" без контроля ссылок
	И я удаляю объекты "Справочники.Companies" без контроля ссылок
	И я удаляю объекты "Справочники.Currencies" без контроля ссылок
	И я удаляю объекты "Справочники.ObjectStatuses" без контроля ссылок
	И я удаляю объекты "Справочники.Partners" без контроля ссылок
	И я удаляю объекты "Справочники.Stores" без контроля ссылок
	И я удаляю объекты "Справочники.Items" без контроля ссылок
	И я удаляю объекты "Документы.SalesOrder" без контроля ссылок
