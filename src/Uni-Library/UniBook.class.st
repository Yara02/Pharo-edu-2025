"
UniBook є базовим абстрактним класом для всіх типів видань у бібліотеці (Монографія, Багатотомник).

Цей клас реалізує спільну функціональність:
- Зберігання основних атрибутів (автор, назва, видавництво, рік).
- Визначає методи для порівняння (за обсягом) та арифметичних операцій.
- Містить логіку розрахунку кількості друкованих аркушів (загальний обсяг / 32).
- Вимагає від підкласів реалізації методу totalPages для розрахунку загальної кількості сторінок.
"
Class {
	#name : 'UniBook',
	#superclass : 'Magnitude',
	#instVars : [
		'author',
		'title',
		'publisher',
		'year'
	],
	#category : 'Uni-Library',
	#package : 'Uni-Library'
}

{ #category : 'operations' }
UniBook >> + aBook [
	^ self printedSheets + aBook printedSheets
]

{ #category : 'operations' }
UniBook >> < aBook [
	^ self printedSheets < aBook printedSheets
]

{ #category : 'operations' }
UniBook >> = aBook [
	^ self printedSheets = aBook printedSheets
]

{ #category : 'accessing' }
UniBook >> author [
	^ author

]

{ #category : 'accessing' }
UniBook >> author: aString [
	author := aString
]

{ #category : 'comparing' }
UniBook >> hash [
	"Обчислює хеш-значення, використовуючи хеш тієї характеристики, 
	за якою ми порівнюємо книги (загальний обсяг у друкованих аркушах)."
	
	^ self printedSheets hash
]

{ #category : 'operations' }
UniBook >> printOn: aStream [
	aStream nextPutAll: 'Книга: ', title asString.
	aStream nextPutAll: ' (', author asString, ')'.
	aStream nextPutAll: '. Аркушів: ', (self printedSheets round: 2) asString.
]

{ #category : 'operations' }
UniBook >> printedSheets [
	^ (self totalPages / 32.0)
]

{ #category : 'accessing' }
UniBook >> publisher [
	^ publisher
]

{ #category : 'accessing' }
UniBook >> publisher: aString [
	publisher := aString
]

{ #category : 'accessing' }
UniBook >> title [
	^ title
]

{ #category : 'accessing' }
UniBook >> title: aString [
	title := aString
	
]

{ #category : 'operations' }
UniBook >> totalPages [
	^ self subclassResponsibility
]

{ #category : 'accessing' }
UniBook >> year [
	^ year
]

{ #category : 'accessing' }
UniBook >> year: anInteger [
	year := anInteger
]
