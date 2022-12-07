#language: ru

@tree
@ExportScenarios

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Функционал: экспорт сценариев

Сценарий: удаление документов для отчета 
И я удаляю объекты "Документы.RetailReturnReceipt" без контроля ссылок
И я удаляю объекты "Документы.SalesReturn" без контроля ссылок

Сценарий: Я провожу документы возврата
	И Я открываю навигационную ссылку "e1cib/data/Document.SalesReturn?ref=b76cbacb2511e57d11ebeab0dfce2225"
	И я нажимаю на кнопку с именем "FormPostAndClose"
	И Я открываю навигационную ссылку "e1cib/data/Document.RetailReturnReceipt?ref=b76cbacb2511e57d11ebeab0dfce2251"
	И я нажимаю на кнопку с именем "FormPostAndClose"

Сценарий: я загружаю документы возврата
	* Создание документа Возврат от розничного покупателя 

		И я проверяю или создаю для документа "RetailReturnReceipt" объекты:
			| 'Ref'                                                                          | 'DeletionMark' | 'Number' | 'Date'                | 'Posted' | 'Agreement'                                                          | 'BaseDocument' | 'Company'                                                           | 'Currency'                                                           | 'LegalName'                                                         | 'ManagerSegment' | 'Partner'                                                          | 'PriceIncludeTax' | 'RetailCustomer' | 'UsePartnerTransactions' | 'LegalNameContract' | 'Author'                                                        | 'Branch'                                                                | 'Description' | 'DocumentAmount' |
			| 'e1cib/data/Document.RetailReturnReceipt?ref=b76cbacb2511e57d11ebeab0dfce2251' | 'False'        | 2        | '01.12.2022 14:00:00' | 'True'   | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb767f10805e2b' | ''             | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb767f10805e29' | ''               | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d7954' | 'True'            | ''               | 'False'                  | ''                  | 'e1cib/data/Catalog.Users?ref=aa7f120ed92fbced11eb13d7279770c0' | 'e1cib/data/Catalog.BusinessUnits?ref=b762b13668d0905011eb7663e35d795a' | ''            | 490              |

		И я перезаполняю для объекта табличную часть "ItemList":
			| 'Ref'                                                                          | 'Key'                                  | 'Cancel' | 'ItemKey'                                                          | 'Store'                                                          | 'NetAmount' | 'OffersAmount' | 'Price' | 'PriceType'                                                          | 'Quantity' | 'TaxAmount' | 'TotalAmount' | 'Unit'                                                          | 'RetailSalesReceipt'                                                          | 'DontCalculateRow' | 'ProfitLossCenter'                                                      | 'QuantityInBaseUnit' | 'Detail' | 'RevenueType' | 'AdditionalAnalytic' | 'ReturnReason' |
			| 'e1cib/data/Document.RetailReturnReceipt?ref=b76cbacb2511e57d11ebeab0dfce2251' | 'c45be945-0f6c-48f3-8f43-1d96a3fb7f72' | 'False'  | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2751' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 408.33      |                | 490     | 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb767f10805e2a' | 1          | 81.67       | 490           | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Document.RetailSalesReceipt?ref=b76cbacb2511e57d11ebeab0dfce224f' | 'False'            | 'e1cib/data/Catalog.BusinessUnits?ref=b762b13668d0905011eb7663e35d795a' | 1                    | ''       | ''            | ''                   | ''             |

		И я перезаполняю для объекта табличную часть "TaxList":
			| 'Ref'                                                                          | 'Key'                                  | 'Tax'                                                           | 'Amount' | 'Analytics' | 'TaxRate'                                                          | 'IncludeToTotalAmount' | 'ManualAmount' |
			| 'e1cib/data/Document.RetailReturnReceipt?ref=b76cbacb2511e57d11ebeab0dfce2251' | 'c45be945-0f6c-48f3-8f43-1d96a3fb7f72' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | 81.67    | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 'True'                 | 81.67          |

		И я перезаполняю для объекта табличную часть "Currencies":
			| 'Ref'                                                                          | 'Key' | 'CurrencyFrom'                                                       | 'Rate' | 'ReverseRate' | 'ShowReverseRate' | 'Multiplicity' | 'MovementType'                                                                                    | 'Amount' | 'IsFixed' |
			| 'e1cib/data/Document.RetailReturnReceipt?ref=b76cbacb2511e57d11ebeab0dfce2251' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 490      | 'False'   |
			| 'e1cib/data/Document.RetailReturnReceipt?ref=b76cbacb2511e57d11ebeab0dfce2251' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 0.859  | 1.1641        | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' | 420.91   | 'False'   |
			| 'e1cib/data/Document.RetailReturnReceipt?ref=b76cbacb2511e57d11ebeab0dfce2251' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7968' | 490      | 'False'   |
			| 'e1cib/data/Document.RetailReturnReceipt?ref=b76cbacb2511e57d11ebeab0dfce2251' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |        |               | 'False'           |                | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7969' |          | 'False'   |

		И я перезаполняю для объекта табличную часть "Payments":
			| 'Ref'                                                                          | 'PaymentType'                                                          | 'PaymentTerminal' | 'Account'                                                              | 'Amount' | 'Percent' | 'Commission' |
			| 'e1cib/data/Document.RetailReturnReceipt?ref=b76cbacb2511e57d11ebeab0dfce2251' | 'e1cib/data/Catalog.PaymentTypes?ref=b762b13668d0905011eb7663e35d795b' | ''                | 'e1cib/data/Catalog.CashAccounts?ref=b762b13668d0905011eb76684b9f685c' | 490      |           |              |

		И я перезаполняю для объекта табличную часть "RowIDInfo":
			| 'Ref'                                                                          | 'Key'                                  | 'RowID'                                | 'Quantity' | 'Basis'                                                                       | 'CurrentStep'                                  | 'NextStep' | 'RowRef'                                                         | 'BasisKey'                             |
			| 'e1cib/data/Document.RetailReturnReceipt?ref=b76cbacb2511e57d11ebeab0dfce2251' | 'c45be945-0f6c-48f3-8f43-1d96a3fb7f72' | 'df8785e6-457e-4b18-84bf-82587c7e934e' | 1          | 'e1cib/data/Document.RetailSalesReceipt?ref=b76cbacb2511e57d11ebeab0dfce224f' | 'e1cib/data/Catalog.MovementRules?refName=RRR' | ''         | 'e1cib/data/Catalog.RowIDs?ref=b76cbacb2511e57d11ebeab0dfce224e' | 'df8785e6-457e-4b18-84bf-82587c7e934e' |

	* Создание объектов для документа Возврат товара от покупателя

		И я проверяю или создаю для документа "SalesReturn" объекты:
			| 'Ref'                                                                  | 'DeletionMark' | 'Number' | 'Date'                | 'Posted' | 'Agreement'                                                          | 'BaseDocument' | 'Company'                                                           | 'Currency'                                                           | 'DateOfShipment'     | 'LegalName'                                                         | 'ManagerSegment' | 'Partner'                                                          | 'PriceIncludeTax' | 'DueAsAdvance' | 'LegalNameContract' | 'Author'                                                        | 'Branch'                                                                | 'Description' | 'DocumentAmount' |
			| 'e1cib/data/Document.SalesReturn?ref=b76cbacb2511e57d11ebeab0dfce2225' | 'False'        | 2        | '01.12.2022 15:00:00' | 'True'   | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6868' | ''             | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | '01.01.0001 0:00:00' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7674324a4a2c' | ''               | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794c' | 'True'            | 'False'        | ''                  | 'e1cib/data/Catalog.Users?ref=aa7f120ed92fbced11eb13d7279770c0' | 'e1cib/data/Catalog.BusinessUnits?ref=b762b13668d0905011eb7663e35d7958' | ''            | 190              |

		И я перезаполняю для объекта табличную часть "ItemList":
			| 'Ref'                                                                  | 'Key'                                  | 'Cancel' | 'ItemKey'                                                          | 'Store'                                                          | 'NetAmount' | 'OffersAmount' | 'Price' | 'PriceType'                                             | 'Quantity' | 'TaxAmount' | 'TotalAmount' | 'Unit'                                                          | 'SalesReturnOrder'                                                          | 'SalesInvoice'                                                          | 'DontCalculateRow' | 'QuantityInBaseUnit' | 'ProfitLossCenter' | 'RevenueType' | 'AdditionalAnalytic' | 'UseGoodsReceipt' | 'ReturnReason' |
			| 'e1cib/data/Document.SalesReturn?ref=b76cbacb2511e57d11ebeab0dfce2225' | 'bbaab383-2efa-4c2d-8672-f9ec0fb42cfd' | 'False'  | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb76684b9f687e' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 158.33      |                | 190     | 'e1cib/data/Catalog.PriceTypes?refName=ManualPriceType' | 1          | 31.67       | 190           | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Document.SalesReturnOrder?ref=b76cbacb2511e57d11ebeab0dfce2228' | 'e1cib/data/Document.SalesInvoice?ref=b76cbacb2511e57d11ebeab0dfce2226' | 'False'            | 1                    | ''                 | ''            | ''                   | 'True'            | ''             |

		И я перезаполняю для объекта табличную часть "TaxList":
			| 'Ref'                                                                  | 'Key'                                  | 'Tax'                                                           | 'Amount' | 'Analytics' | 'TaxRate'                                                          | 'IncludeToTotalAmount' | 'ManualAmount' |
			| 'e1cib/data/Document.SalesReturn?ref=b76cbacb2511e57d11ebeab0dfce2225' | 'bbaab383-2efa-4c2d-8672-f9ec0fb42cfd' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | 31.67    | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 'True'                 | 31.67          |

		И я перезаполняю для объекта табличную часть "Currencies":
			| 'Ref'                                                                  | 'CurrencyFrom'                                                       | 'Rate' | 'ReverseRate' | 'ShowReverseRate' | 'Multiplicity' | 'Key' | 'MovementType'                                                                                    | 'Amount' | 'IsFixed' |
			| 'e1cib/data/Document.SalesReturn?ref=b76cbacb2511e57d11ebeab0dfce2225' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | ''    | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 190      | 'False'   |
			| 'e1cib/data/Document.SalesReturn?ref=b76cbacb2511e57d11ebeab0dfce2225' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 0.859  | 1.1641        | 'False'           | 1              | ''    | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' | 163.21   | 'False'   |
			| 'e1cib/data/Document.SalesReturn?ref=b76cbacb2511e57d11ebeab0dfce2225' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | ''    | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7968' | 190      | 'False'   |
			| 'e1cib/data/Document.SalesReturn?ref=b76cbacb2511e57d11ebeab0dfce2225' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |        |               | 'False'           |                | ''    | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7969' |          | 'False'   |

		И я перезаполняю для объекта табличную часть "RowIDInfo":
			| 'Ref'                                                                  | 'Key'                                  | 'RowID'                                | 'Quantity' | 'Basis'                                                                     | 'CurrentStep'                                 | 'NextStep'                                    | 'RowRef'                                                         | 'BasisKey'                             |
			| 'e1cib/data/Document.SalesReturn?ref=b76cbacb2511e57d11ebeab0dfce2225' | 'bbaab383-2efa-4c2d-8672-f9ec0fb42cfd' | 'dcdcbe9e-5743-49b6-8ca8-8e95b7ac6b89' | 1          | 'e1cib/data/Document.SalesReturnOrder?ref=b76cbacb2511e57d11ebeab0dfce2228' | 'e1cib/data/Catalog.MovementRules?refName=SR' | 'e1cib/data/Catalog.MovementRules?refName=GR' | 'e1cib/data/Catalog.RowIDs?ref=b76cbacb2511e57d11ebeab0dfce2222' | 'b818be7c-066b-43ad-a65a-04f7cfef2595' |

