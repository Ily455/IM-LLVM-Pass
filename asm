
a.out:     file format elf64-x86-64


Disassembly of section .text:

00000000000017d0 <_start>:
    17d0:	f3 0f 1e fa          	endbr64 
    17d4:	31 ed                	xor    %ebp,%ebp
    17d6:	49 89 d1             	mov    %rdx,%r9
    17d9:	5e                   	pop    %rsi
    17da:	48 89 e2             	mov    %rsp,%rdx
    17dd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    17e1:	50                   	push   %rax
    17e2:	54                   	push   %rsp
    17e3:	45 31 c0             	xor    %r8d,%r8d
    17e6:	31 c9                	xor    %ecx,%ecx
    17e8:	48 8d 3d 91 03 00 00 	lea    0x391(%rip),%rdi        # 1b80 <main>
    17ef:	ff 15 fb 17 00 00    	call   *0x17fb(%rip)        # 2ff0 <__libc_start_main@GLIBC_2.34>
    17f5:	f4                   	hlt    
    17f6:	cc                   	int3   
    17f7:	cc                   	int3   
    17f8:	cc                   	int3   
    17f9:	cc                   	int3   
    17fa:	cc                   	int3   
    17fb:	cc                   	int3   
    17fc:	cc                   	int3   
    17fd:	cc                   	int3   
    17fe:	cc                   	int3   
    17ff:	cc                   	int3   

0000000000001800 <deregister_tm_clones>:
    1800:	48 8d 3d 21 28 00 00 	lea    0x2821(%rip),%rdi        # 4028 <__TMC_END__>
    1807:	48 8d 05 1a 28 00 00 	lea    0x281a(%rip),%rax        # 4028 <__TMC_END__>
    180e:	48 39 f8             	cmp    %rdi,%rax
    1811:	74 15                	je     1828 <deregister_tm_clones+0x28>
    1813:	48 8b 05 e6 17 00 00 	mov    0x17e6(%rip),%rax        # 3000 <_ITM_deregisterTMCloneTable@Base>
    181a:	48 85 c0             	test   %rax,%rax
    181d:	74 09                	je     1828 <deregister_tm_clones+0x28>
    181f:	ff e0                	jmp    *%rax
    1821:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1828:	c3                   	ret    
    1829:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001830 <register_tm_clones>:
    1830:	48 8d 3d f1 27 00 00 	lea    0x27f1(%rip),%rdi        # 4028 <__TMC_END__>
    1837:	48 8d 35 ea 27 00 00 	lea    0x27ea(%rip),%rsi        # 4028 <__TMC_END__>
    183e:	48 29 fe             	sub    %rdi,%rsi
    1841:	48 89 f0             	mov    %rsi,%rax
    1844:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1848:	48 c1 f8 03          	sar    $0x3,%rax
    184c:	48 01 c6             	add    %rax,%rsi
    184f:	48 d1 fe             	sar    %rsi
    1852:	74 14                	je     1868 <register_tm_clones+0x38>
    1854:	48 8b 05 ad 17 00 00 	mov    0x17ad(%rip),%rax        # 3008 <_ITM_registerTMCloneTable@Base>
    185b:	48 85 c0             	test   %rax,%rax
    185e:	74 08                	je     1868 <register_tm_clones+0x38>
    1860:	ff e0                	jmp    *%rax
    1862:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1868:	c3                   	ret    
    1869:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001870 <__do_global_dtors_aux>:
    1870:	f3 0f 1e fa          	endbr64 
    1874:	80 3d fd 27 00 00 00 	cmpb   $0x0,0x27fd(%rip)        # 4078 <completed.0>
    187b:	75 2b                	jne    18a8 <__do_global_dtors_aux+0x38>
    187d:	55                   	push   %rbp
    187e:	48 83 3d 8a 17 00 00 	cmpq   $0x0,0x178a(%rip)        # 3010 <__cxa_finalize@GLIBC_2.2.5>
    1885:	00 
    1886:	48 89 e5             	mov    %rsp,%rbp
    1889:	74 0c                	je     1897 <__do_global_dtors_aux+0x27>
    188b:	48 8b 3d 8e 27 00 00 	mov    0x278e(%rip),%rdi        # 4020 <__dso_handle>
    1892:	e8 39 05 00 00       	call   1dd0 <__cxa_finalize@plt>
    1897:	e8 64 ff ff ff       	call   1800 <deregister_tm_clones>
    189c:	c6 05 d5 27 00 00 01 	movb   $0x1,0x27d5(%rip)        # 4078 <completed.0>
    18a3:	5d                   	pop    %rbp
    18a4:	c3                   	ret    
    18a5:	0f 1f 00             	nopl   (%rax)
    18a8:	c3                   	ret    
    18a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000018b0 <frame_dummy>:
    18b0:	f3 0f 1e fa          	endbr64 
    18b4:	e9 77 ff ff ff       	jmp    1830 <register_tm_clones>
    18b9:	cc                   	int3   
    18ba:	cc                   	int3   
    18bb:	cc                   	int3   
    18bc:	cc                   	int3   
    18bd:	cc                   	int3   
    18be:	cc                   	int3   
    18bf:	cc                   	int3   

00000000000018c0 <WyXBaJjlBH>:
    18c0:	55                   	push   %rbp
    18c1:	48 89 e5             	mov    %rsp,%rbp
    18c4:	48 83 ec 20          	sub    $0x20,%rsp
    18c8:	89 7d fc             	mov    %edi,-0x4(%rbp)
    18cb:	89 75 f8             	mov    %esi,-0x8(%rbp)
    18ce:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
    18d2:	8b 45 f8             	mov    -0x8(%rbp),%eax
    18d5:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    18d9:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    18e0:	8b 45 ec             	mov    -0x14(%rbp),%eax
    18e3:	3b 45 fc             	cmp    -0x4(%rbp),%eax
    18e6:	0f 8d 69 00 00 00    	jge    1955 <WyXBaJjlBH+0x95>
    18ec:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
    18f3:	8b 45 e8             	mov    -0x18(%rbp),%eax
    18f6:	3b 45 f8             	cmp    -0x8(%rbp),%eax
    18f9:	0f 8d 3a 00 00 00    	jge    1939 <WyXBaJjlBH+0x79>
    18ff:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    1903:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1907:	48 63 4d ec          	movslq -0x14(%rbp),%rcx
    190b:	48 0f af ca          	imul   %rdx,%rcx
    190f:	48 c1 e1 02          	shl    $0x2,%rcx
    1913:	48 01 c8             	add    %rcx,%rax
    1916:	48 63 4d e8          	movslq -0x18(%rbp),%rcx
    191a:	8b 34 88             	mov    (%rax,%rcx,4),%esi
    191d:	48 8d 3d b7 ed ff ff 	lea    -0x1249(%rip),%rdi        # 6db <_IO_stdin_used+0x3b>
    1924:	b0 00                	mov    $0x0,%al
    1926:	e8 b5 04 00 00       	call   1de0 <printf@plt>
    192b:	8b 45 e8             	mov    -0x18(%rbp),%eax
    192e:	83 c0 01             	add    $0x1,%eax
    1931:	89 45 e8             	mov    %eax,-0x18(%rbp)
    1934:	e9 ba ff ff ff       	jmp    18f3 <WyXBaJjlBH+0x33>
    1939:	48 8d 3d 99 ed ff ff 	lea    -0x1267(%rip),%rdi        # 6d9 <_IO_stdin_used+0x39>
    1940:	b0 00                	mov    $0x0,%al
    1942:	e8 99 04 00 00       	call   1de0 <printf@plt>
    1947:	8b 45 ec             	mov    -0x14(%rbp),%eax
    194a:	83 c0 01             	add    $0x1,%eax
    194d:	89 45 ec             	mov    %eax,-0x14(%rbp)
    1950:	e9 8b ff ff ff       	jmp    18e0 <WyXBaJjlBH+0x20>
    1955:	48 83 c4 20          	add    $0x20,%rsp
    1959:	5d                   	pop    %rbp
    195a:	c3                   	ret    
    195b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001960 <Gu4IAtscoK>:
    1960:	55                   	push   %rbp
    1961:	48 89 e5             	mov    %rsp,%rbp
    1964:	48 83 ec 20          	sub    $0x20,%rsp
    1968:	48 89 7d e0          	mov    %rdi,-0x20(%rbp)
    196c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1970:	48 8d 45 10          	lea    0x10(%rbp),%rax
    1974:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1978:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    197f:	81 7d fc 2c 01 00 00 	cmpl   $0x12c,-0x4(%rbp)
    1986:	0f 8d 52 00 00 00    	jge    19de <Gu4IAtscoK+0x7e>
    198c:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
    1993:	81 7d f8 2c 01 00 00 	cmpl   $0x12c,-0x8(%rbp)
    199a:	0f 8d 2b 00 00 00    	jge    19cb <Gu4IAtscoK+0x6b>
    19a0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    19a4:	48 63 4d fc          	movslq -0x4(%rbp),%rcx
    19a8:	48 69 c9 b0 04 00 00 	imul   $0x4b0,%rcx,%rcx
    19af:	48 01 c8             	add    %rcx,%rax
    19b2:	48 63 4d f8          	movslq -0x8(%rbp),%rcx
    19b6:	6b 14 88 00          	imul   $0x0,(%rax,%rcx,4),%edx
    19ba:	89 14 88             	mov    %edx,(%rax,%rcx,4)
    19bd:	8b 45 f8             	mov    -0x8(%rbp),%eax
    19c0:	83 c0 01             	add    $0x1,%eax
    19c3:	89 45 f8             	mov    %eax,-0x8(%rbp)
    19c6:	e9 c8 ff ff ff       	jmp    1993 <Gu4IAtscoK+0x33>
    19cb:	e9 00 00 00 00       	jmp    19d0 <Gu4IAtscoK+0x70>
    19d0:	8b 45 fc             	mov    -0x4(%rbp),%eax
    19d3:	83 c0 01             	add    $0x1,%eax
    19d6:	89 45 fc             	mov    %eax,-0x4(%rbp)
    19d9:	e9 a1 ff ff ff       	jmp    197f <Gu4IAtscoK+0x1f>
    19de:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    19e2:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
    19e6:	ba 40 7e 05 00       	mov    $0x57e40,%edx
    19eb:	e8 00 04 00 00       	call   1df0 <memcpy@plt>
    19f0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    19f4:	48 83 c4 20          	add    $0x20,%rsp
    19f8:	5d                   	pop    %rbp
    19f9:	c3                   	ret    
    19fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001a00 <Dvs49Klt6y>:
    1a00:	55                   	push   %rbp
    1a01:	48 89 e5             	mov    %rsp,%rbp
    1a04:	48 81 ec f0 7a 10 00 	sub    $0x107af0,%rsp
    1a0b:	48 89 f0             	mov    %rsi,%rax
    1a0e:	48 89 fe             	mov    %rdi,%rsi
    1a11:	48 89 b5 58 03 f5 ff 	mov    %rsi,-0xafca8(%rbp)
    1a18:	48 89 f7             	mov    %rsi,%rdi
    1a1b:	48 89 bd 50 03 f5 ff 	mov    %rdi,-0xafcb0(%rbp)
    1a22:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1a26:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
    1a2a:	48 8d bd 70 03 f5 ff 	lea    -0xafc90(%rbp),%rdi
    1a31:	ba 40 7e 05 00       	mov    $0x57e40,%edx
    1a36:	e8 b5 03 00 00       	call   1df0 <memcpy@plt>
    1a3b:	48 89 e7             	mov    %rsp,%rdi
    1a3e:	b9 c8 af 00 00       	mov    $0xafc8,%ecx
    1a43:	48 8d b5 70 03 f5 ff 	lea    -0xafc90(%rbp),%rsi
    1a4a:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
    1a4d:	48 8d bd b0 81 fa ff 	lea    -0x57e50(%rbp),%rdi
    1a54:	e8 07 ff ff ff       	call   1960 <Gu4IAtscoK>
    1a59:	48 8b bd 58 03 f5 ff 	mov    -0xafca8(%rbp),%rdi
    1a60:	48 8d b5 b0 81 fa ff 	lea    -0x57e50(%rbp),%rsi
    1a67:	ba 40 7e 05 00       	mov    $0x57e40,%edx
    1a6c:	e8 7f 03 00 00       	call   1df0 <memcpy@plt>
    1a71:	c7 85 6c 03 f5 ff 00 	movl   $0x0,-0xafc94(%rbp)
    1a78:	00 00 00 
    1a7b:	81 bd 6c 03 f5 ff 2c 	cmpl   $0x12c,-0xafc94(%rbp)
    1a82:	01 00 00 
    1a85:	0f 8d de 00 00 00    	jge    1b69 <Dvs49Klt6y+0x169>
    1a8b:	c7 85 68 03 f5 ff 00 	movl   $0x0,-0xafc98(%rbp)
    1a92:	00 00 00 
    1a95:	81 bd 68 03 f5 ff 2c 	cmpl   $0x12c,-0xafc98(%rbp)
    1a9c:	01 00 00 
    1a9f:	0f 8d ab 00 00 00    	jge    1b50 <Dvs49Klt6y+0x150>
    1aa5:	c7 85 64 03 f5 ff 00 	movl   $0x0,-0xafc9c(%rbp)
    1aac:	00 00 00 
    1aaf:	81 bd 64 03 f5 ff 2c 	cmpl   $0x12c,-0xafc9c(%rbp)
    1ab6:	01 00 00 
    1ab9:	0f 8d 78 00 00 00    	jge    1b37 <Dvs49Klt6y+0x137>
    1abf:	48 8b 85 58 03 f5 ff 	mov    -0xafca8(%rbp),%rax
    1ac6:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    1aca:	48 63 95 6c 03 f5 ff 	movslq -0xafc94(%rbp),%rdx
    1ad1:	48 69 d2 b0 04 00 00 	imul   $0x4b0,%rdx,%rdx
    1ad8:	48 01 d1             	add    %rdx,%rcx
    1adb:	48 63 95 64 03 f5 ff 	movslq -0xafc9c(%rbp),%rdx
    1ae2:	8b 14 91             	mov    (%rcx,%rdx,4),%edx
    1ae5:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    1ae9:	48 63 b5 64 03 f5 ff 	movslq -0xafc9c(%rbp),%rsi
    1af0:	48 69 f6 b0 04 00 00 	imul   $0x4b0,%rsi,%rsi
    1af7:	48 01 f1             	add    %rsi,%rcx
    1afa:	48 63 b5 68 03 f5 ff 	movslq -0xafc98(%rbp),%rsi
    1b01:	0f af 14 b1          	imul   (%rcx,%rsi,4),%edx
    1b05:	48 63 8d 6c 03 f5 ff 	movslq -0xafc94(%rbp),%rcx
    1b0c:	48 69 c9 b0 04 00 00 	imul   $0x4b0,%rcx,%rcx
    1b13:	48 01 c8             	add    %rcx,%rax
    1b16:	48 63 8d 68 03 f5 ff 	movslq -0xafc98(%rbp),%rcx
    1b1d:	03 14 88             	add    (%rax,%rcx,4),%edx
    1b20:	89 14 88             	mov    %edx,(%rax,%rcx,4)
    1b23:	8b 85 64 03 f5 ff    	mov    -0xafc9c(%rbp),%eax
    1b29:	83 c0 01             	add    $0x1,%eax
    1b2c:	89 85 64 03 f5 ff    	mov    %eax,-0xafc9c(%rbp)
    1b32:	e9 78 ff ff ff       	jmp    1aaf <Dvs49Klt6y+0xaf>
    1b37:	e9 00 00 00 00       	jmp    1b3c <Dvs49Klt6y+0x13c>
    1b3c:	8b 85 68 03 f5 ff    	mov    -0xafc98(%rbp),%eax
    1b42:	83 c0 01             	add    $0x1,%eax
    1b45:	89 85 68 03 f5 ff    	mov    %eax,-0xafc98(%rbp)
    1b4b:	e9 45 ff ff ff       	jmp    1a95 <Dvs49Klt6y+0x95>
    1b50:	e9 00 00 00 00       	jmp    1b55 <Dvs49Klt6y+0x155>
    1b55:	8b 85 6c 03 f5 ff    	mov    -0xafc94(%rbp),%eax
    1b5b:	83 c0 01             	add    $0x1,%eax
    1b5e:	89 85 6c 03 f5 ff    	mov    %eax,-0xafc94(%rbp)
    1b64:	e9 12 ff ff ff       	jmp    1a7b <Dvs49Klt6y+0x7b>
    1b69:	48 8b 85 50 03 f5 ff 	mov    -0xafcb0(%rbp),%rax
    1b70:	48 81 c4 f0 7a 10 00 	add    $0x107af0,%rsp
    1b77:	5d                   	pop    %rbp
    1b78:	c3                   	ret    
    1b79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001b80 <main>:
    1b80:	55                   	push   %rbp
    1b81:	48 89 e5             	mov    %rsp,%rbp
    1b84:	48 81 ec f0 7a 10 00 	sub    $0x107af0,%rsp
    1b8b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    1b92:	e8 69 02 00 00       	call   1e00 <clock@plt>
    1b97:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1b9b:	31 c0                	xor    %eax,%eax
    1b9d:	89 c7                	mov    %eax,%edi
    1b9f:	e8 6c 02 00 00       	call   1e10 <time@plt>
    1ba4:	89 c7                	mov    %eax,%edi
    1ba6:	e8 75 02 00 00       	call   1e20 <srand@plt>
    1bab:	c7 85 5c 03 f5 ff 00 	movl   $0x0,-0xafca4(%rbp)
    1bb2:	00 00 00 
    1bb5:	81 bd 5c 03 f5 ff 2c 	cmpl   $0x12c,-0xafca4(%rbp)
    1bbc:	01 00 00 
    1bbf:	0f 8d 76 00 00 00    	jge    1c3b <main+0xbb>
    1bc5:	c7 85 58 03 f5 ff 00 	movl   $0x0,-0xafca8(%rbp)
    1bcc:	00 00 00 
    1bcf:	81 bd 58 03 f5 ff 2c 	cmpl   $0x12c,-0xafca8(%rbp)
    1bd6:	01 00 00 
    1bd9:	0f 8d 43 00 00 00    	jge    1c22 <main+0xa2>
    1bdf:	e8 4c 02 00 00       	call   1e30 <rand@plt>
    1be4:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
    1be9:	99                   	cltd   
    1bea:	f7 f9                	idiv   %ecx
    1bec:	48 63 8d 5c 03 f5 ff 	movslq -0xafca4(%rbp),%rcx
    1bf3:	48 8d 85 a0 81 fa ff 	lea    -0x57e60(%rbp),%rax
    1bfa:	48 69 c9 b0 04 00 00 	imul   $0x4b0,%rcx,%rcx
    1c01:	48 01 c8             	add    %rcx,%rax
    1c04:	48 63 8d 58 03 f5 ff 	movslq -0xafca8(%rbp),%rcx
    1c0b:	89 14 88             	mov    %edx,(%rax,%rcx,4)
    1c0e:	8b 85 58 03 f5 ff    	mov    -0xafca8(%rbp),%eax
    1c14:	83 c0 01             	add    $0x1,%eax
    1c17:	89 85 58 03 f5 ff    	mov    %eax,-0xafca8(%rbp)
    1c1d:	e9 ad ff ff ff       	jmp    1bcf <main+0x4f>
    1c22:	e9 00 00 00 00       	jmp    1c27 <main+0xa7>
    1c27:	8b 85 5c 03 f5 ff    	mov    -0xafca4(%rbp),%eax
    1c2d:	83 c0 01             	add    $0x1,%eax
    1c30:	89 85 5c 03 f5 ff    	mov    %eax,-0xafca4(%rbp)
    1c36:	e9 7a ff ff ff       	jmp    1bb5 <main+0x35>
    1c3b:	c7 85 54 03 f5 ff 00 	movl   $0x0,-0xafcac(%rbp)
    1c42:	00 00 00 
    1c45:	81 bd 54 03 f5 ff 2c 	cmpl   $0x12c,-0xafcac(%rbp)
    1c4c:	01 00 00 
    1c4f:	0f 8d 76 00 00 00    	jge    1ccb <main+0x14b>
    1c55:	c7 85 50 03 f5 ff 00 	movl   $0x0,-0xafcb0(%rbp)
    1c5c:	00 00 00 
    1c5f:	81 bd 50 03 f5 ff 2c 	cmpl   $0x12c,-0xafcb0(%rbp)
    1c66:	01 00 00 
    1c69:	0f 8d 43 00 00 00    	jge    1cb2 <main+0x132>
    1c6f:	e8 bc 01 00 00       	call   1e30 <rand@plt>
    1c74:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
    1c79:	99                   	cltd   
    1c7a:	f7 f9                	idiv   %ecx
    1c7c:	48 63 8d 54 03 f5 ff 	movslq -0xafcac(%rbp),%rcx
    1c83:	48 8d 85 60 03 f5 ff 	lea    -0xafca0(%rbp),%rax
    1c8a:	48 69 c9 b0 04 00 00 	imul   $0x4b0,%rcx,%rcx
    1c91:	48 01 c8             	add    %rcx,%rax
    1c94:	48 63 8d 50 03 f5 ff 	movslq -0xafcb0(%rbp),%rcx
    1c9b:	89 14 88             	mov    %edx,(%rax,%rcx,4)
    1c9e:	8b 85 50 03 f5 ff    	mov    -0xafcb0(%rbp),%eax
    1ca4:	83 c0 01             	add    $0x1,%eax
    1ca7:	89 85 50 03 f5 ff    	mov    %eax,-0xafcb0(%rbp)
    1cad:	e9 ad ff ff ff       	jmp    1c5f <main+0xdf>
    1cb2:	e9 00 00 00 00       	jmp    1cb7 <main+0x137>
    1cb7:	8b 85 54 03 f5 ff    	mov    -0xafcac(%rbp),%eax
    1cbd:	83 c0 01             	add    $0x1,%eax
    1cc0:	89 85 54 03 f5 ff    	mov    %eax,-0xafcac(%rbp)
    1cc6:	e9 7a ff ff ff       	jmp    1c45 <main+0xc5>
    1ccb:	48 8d 3d fc e9 ff ff 	lea    -0x1604(%rip),%rdi        # 6ce <_IO_stdin_used+0x2e>
    1cd2:	b0 00                	mov    $0x0,%al
    1cd4:	e8 07 01 00 00       	call   1de0 <printf@plt>
    1cd9:	48 8d 95 a0 81 fa ff 	lea    -0x57e60(%rbp),%rdx
    1ce0:	be 2c 01 00 00       	mov    $0x12c,%esi
    1ce5:	89 f7                	mov    %esi,%edi
    1ce7:	e8 d4 fb ff ff       	call   18c0 <WyXBaJjlBH>
    1cec:	48 8d 3d bd e9 ff ff 	lea    -0x1643(%rip),%rdi        # 6b0 <_IO_stdin_used+0x10>
    1cf3:	b0 00                	mov    $0x0,%al
    1cf5:	e8 e6 00 00 00       	call   1de0 <printf@plt>
    1cfa:	48 8d 95 60 03 f5 ff 	lea    -0xafca0(%rbp),%rdx
    1d01:	be 2c 01 00 00       	mov    $0x12c,%esi
    1d06:	89 f7                	mov    %esi,%edi
    1d08:	e8 b3 fb ff ff       	call   18c0 <WyXBaJjlBH>
    1d0d:	48 8d 3d a8 e9 ff ff 	lea    -0x1658(%rip),%rdi        # 6bc <_IO_stdin_used+0x1c>
    1d14:	b0 00                	mov    $0x0,%al
    1d16:	e8 c5 00 00 00       	call   1de0 <printf@plt>
    1d1b:	48 8d b5 a0 81 fa ff 	lea    -0x57e60(%rbp),%rsi
    1d22:	48 8d 95 60 03 f5 ff 	lea    -0xafca0(%rbp),%rdx
    1d29:	48 8d bd 10 85 ef ff 	lea    -0x107af0(%rbp),%rdi
    1d30:	e8 cb fc ff ff       	call   1a00 <Dvs49Klt6y>
    1d35:	48 8d 95 10 85 ef ff 	lea    -0x107af0(%rbp),%rdx
    1d3c:	be 2c 01 00 00       	mov    $0x12c,%esi
    1d41:	89 f7                	mov    %esi,%edi
    1d43:	e8 78 fb ff ff       	call   18c0 <WyXBaJjlBH>
    1d48:	e8 b3 00 00 00       	call   1e00 <clock@plt>
    1d4d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1d51:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1d55:	48 2b 45 f0          	sub    -0x10(%rbp),%rax
    1d59:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    1d5e:	f2 0f 10 0d 42 e9 ff 	movsd  -0x16be(%rip),%xmm1        # 6a8 <_IO_stdin_used+0x8>
    1d65:	ff 
    1d66:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    1d6a:	f2 0f 11 45 e0       	movsd  %xmm0,-0x20(%rbp)
    1d6f:	f2 0f 10 45 e0       	movsd  -0x20(%rbp),%xmm0
    1d74:	48 8d 3d 65 e9 ff ff 	lea    -0x169b(%rip),%rdi        # 6e0 <_IO_stdin_used+0x40>
    1d7b:	b0 01                	mov    $0x1,%al
    1d7d:	e8 5e 00 00 00       	call   1de0 <printf@plt>
    1d82:	31 c0                	xor    %eax,%eax
    1d84:	48 81 c4 f0 7a 10 00 	add    $0x107af0,%rsp
    1d8b:	5d                   	pop    %rbp
    1d8c:	c3                   	ret    

Disassembly of section .init:

0000000000001d90 <_init>:
    1d90:	f3 0f 1e fa          	endbr64 
    1d94:	48 83 ec 08          	sub    $0x8,%rsp
    1d98:	48 8b 05 59 12 00 00 	mov    0x1259(%rip),%rax        # 2ff8 <__gmon_start__@Base>
    1d9f:	48 85 c0             	test   %rax,%rax
    1da2:	74 02                	je     1da6 <_init+0x16>
    1da4:	ff d0                	call   *%rax
    1da6:	48 83 c4 08          	add    $0x8,%rsp
    1daa:	c3                   	ret    

Disassembly of section .fini:

0000000000001dac <_fini>:
    1dac:	f3 0f 1e fa          	endbr64 
    1db0:	48 83 ec 08          	sub    $0x8,%rsp
    1db4:	48 83 c4 08          	add    $0x8,%rsp
    1db8:	c3                   	ret    

Disassembly of section .plt:

0000000000001dc0 <__cxa_finalize@plt-0x10>:
    1dc0:	ff 35 6a 22 00 00    	push   0x226a(%rip)        # 4030 <__TMC_END__+0x8>
    1dc6:	ff 25 6c 22 00 00    	jmp    *0x226c(%rip)        # 4038 <__TMC_END__+0x10>
    1dcc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001dd0 <__cxa_finalize@plt>:
    1dd0:	ff 25 6a 22 00 00    	jmp    *0x226a(%rip)        # 4040 <__cxa_finalize@GLIBC_2.2.5>
    1dd6:	68 00 00 00 00       	push   $0x0
    1ddb:	e9 e0 ff ff ff       	jmp    1dc0 <_fini+0x14>

0000000000001de0 <printf@plt>:
    1de0:	ff 25 62 22 00 00    	jmp    *0x2262(%rip)        # 4048 <printf@GLIBC_2.2.5>
    1de6:	68 01 00 00 00       	push   $0x1
    1deb:	e9 d0 ff ff ff       	jmp    1dc0 <_fini+0x14>

0000000000001df0 <memcpy@plt>:
    1df0:	ff 25 5a 22 00 00    	jmp    *0x225a(%rip)        # 4050 <memcpy@GLIBC_2.14>
    1df6:	68 02 00 00 00       	push   $0x2
    1dfb:	e9 c0 ff ff ff       	jmp    1dc0 <_fini+0x14>

0000000000001e00 <clock@plt>:
    1e00:	ff 25 52 22 00 00    	jmp    *0x2252(%rip)        # 4058 <clock@GLIBC_2.2.5>
    1e06:	68 03 00 00 00       	push   $0x3
    1e0b:	e9 b0 ff ff ff       	jmp    1dc0 <_fini+0x14>

0000000000001e10 <time@plt>:
    1e10:	ff 25 4a 22 00 00    	jmp    *0x224a(%rip)        # 4060 <time@GLIBC_2.2.5>
    1e16:	68 04 00 00 00       	push   $0x4
    1e1b:	e9 a0 ff ff ff       	jmp    1dc0 <_fini+0x14>

0000000000001e20 <srand@plt>:
    1e20:	ff 25 42 22 00 00    	jmp    *0x2242(%rip)        # 4068 <srand@GLIBC_2.2.5>
    1e26:	68 05 00 00 00       	push   $0x5
    1e2b:	e9 90 ff ff ff       	jmp    1dc0 <_fini+0x14>

0000000000001e30 <rand@plt>:
    1e30:	ff 25 3a 22 00 00    	jmp    *0x223a(%rip)        # 4070 <rand@GLIBC_2.2.5>
    1e36:	68 06 00 00 00       	push   $0x6
    1e3b:	e9 80 ff ff ff       	jmp    1dc0 <_fini+0x14>
