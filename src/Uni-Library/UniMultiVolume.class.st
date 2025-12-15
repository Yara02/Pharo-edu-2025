"
UniMultiVolume є підкласом UniBook і моделює видання, що складається з кількох томів.

Він додає специфічні атрибути: кількість томів (volumesCount) та кількість сторінок у кожному томі (pagesPerVolume).

Ключовий метод totalPages реалізовано шляхом обчислення загального обсягу як добутку кількості томів на кількість сторінок у томі.
"
Class {
	#name : 'UniMultiVolume',
	#superclass : 'UniBook',
	#instVars : [
		'volumesCount',
		'pagesPerVolume'
	],
	#category : 'Uni-Library',
	#package : 'Uni-Library'
}

{ #category : 'accessing' }
UniMultiVolume >> pagesPerVolume: anInteger [
	pagesPerVolume := anInteger
]

{ #category : 'operations' }
UniMultiVolume >> totalPages [
	^ volumesCount * pagesPerVolume
]

{ #category : 'accessing' }
UniMultiVolume >> volumesCount: anInteger [
	volumesCount := anInteger
]
