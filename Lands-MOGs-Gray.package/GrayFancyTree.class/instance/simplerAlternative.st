accessing
simplerAlternative

	| v es c arrow |
v := RTView new.
c := RTMultiLinearColor new.
es := (RTEllipse new
	size: 30;
	color: [ :e | c level: e / 10 ]) elementsOn: (1 to: 10).
v addAll: es.
es @ (RTLabeled above color: Color black; fontSize: 6).
es @ RTDraggable.

2 to: 10 do: [ :e | |l|	
l := RTEdge from: (es at: (e // 2)) to: (es at: e).
l + (RTLine new color: Color red).
l + (RTSimpleArrowHead new color: Color red).	
v add: l.
l @ (RTLabeled center text: (e // 2 -> e) asString; color: Color black; fontSize: 4)].

RTTreeLayout new on: es.

^ v.
