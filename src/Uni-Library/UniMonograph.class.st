"
UniMonograph є підкласом UniBook і моделює видання у вигляді монографії.

Він додає специфічні атрибути: кількість сторінок тексту (pageCount) та кількість ілюстрацій (illustrationCount), які за умовами завдання враховуються як окремі сторінки.

Ключовий метод totalPages реалізовано шляхом обчислення загального обсягу як суми сторінок тексту та ілюстрацій.
"
Class {
	#name : 'UniMonograph',
	#superclass : 'UniBook',
	#instVars : [
		'pageCount',
		'illustrationCount'
	],
	#category : 'Uni-Library',
	#package : 'Uni-Library'
}

{ #category : 'accessing' }
UniMonograph >> illustrationCount: anInteger [
	illustrationCount := anInteger
]

{ #category : 'accessing' }
UniMonograph >> pageCount: anInteger [
	pageCount := anInteger
]

{ #category : 'operations' }
UniMonograph >> totalPages [
	^ pageCount + illustrationCount
]
