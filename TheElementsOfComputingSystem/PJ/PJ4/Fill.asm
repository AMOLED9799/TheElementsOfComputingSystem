@24576
D=A
@R1
M=D

@SCREEN
D=A-1
@R0
M=D

(FILL)
@0
D = !A	// 1111 1111 1111 1111
@R0
A=M
M=D	// R0�� ���� �ּҿ� (-1)�� �ִ´�

(KBDINPUT)
@R0
M=M+1
@R1
D=M
@R0
D=D-M
@RESET
D;JLE	// �ִ� ������ ���� �ʴ��� �˻�

@R0
A=M
M=0

@KBD
D=M
@FILL
D;JNE	// KBD���� ������ ���� 0�� �ƴ϶�� SCREENFILL

@KBDINPUT
0;JMP

