	.global	_start

	.text
	
_start:
	mov	$1, 		%rax 	// fn = write()
	mov 	$1, 		%rdi	// out = stdout
	movabs	$message, 	%rsi	// arg = message
	mov	$21,		%rdx	// len(arg) = 21
	syscall

	mov	$60, %rax		// fn = exit()
	xor	%rdi, %rdi		// rdi = rdi ^ rdi
	syscall

message:
	.ascii	"Hello Assembly World!"
