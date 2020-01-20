;section .text
;
;	global _ft_strcmp
;
;_ft_strcmp:
;	xor		al, al					;initialisation : al = 0
;	xor		rcx, rcx				;initialisation de l'incrementeur : rcx = 0
;boucle:
;	mov		bh, BYTE [rdi + rcx]	;on affecte la i-eme valeur de rdi a bh
;	mov		cl, BYTE [rsi + rcx]	;on affecte la i-eme valeur de rsi a cl
;	mov		al, bh					;al stock le resultat de bh puis servira a stocker le resultat
;	sub		al, cl					;on soustrait cl a al
;	test	bh, bh					;si al = 0, le ZERO FLAG prend la valeur 1	(voir la doc dans le fichier .md)
;	jz 	end						;si al n'est pas = 0, alors on a ZF = 0, en revanche,
;									;si al == 0, alors ZF = 1, on a donc la function jnz (jump if not zero) pour aller a la fin
;	inc 	rcx
;	test	al, al
;	jz		boucle					; on boucle
;end:
;	movsx	rax, al					; 	on affecte le resultat a rax (qui est ce qui est retourne)
;									;	on utilise movsx plutot que mov car ca permet de mov un src
;
;						;	qui n'est pas du meme type que la dest
;ret
