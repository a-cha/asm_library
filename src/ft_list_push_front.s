; args order: rdi, rsi, rdx, rcx
; void	ft_list_push_front(t_list **begin_list, void *data);

extern _malloc

section		.text
global		_ft_list_push_front

_ft_list_push_front:
	push	rdi
	push	rsi
	mov		rdi, 16
	call	_malloc				; alloc memory for new t_list *
	pop		rsi
	pop		rdi
	cmp		rax, 0
	je		return
	mov		[rax], rsi
	mov		rdx, [rdi]			; rdx - temporary for *begin_list
	mov		[rdi], rax
	mov		[rax + 8], rdx

return:
	ret
