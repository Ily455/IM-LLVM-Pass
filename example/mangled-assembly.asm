
mangled-exe:     file format elf64-x86-64


Disassembly of section .text:

0000000000001630 <_start>:
    1630:	f3 0f 1e fa          	endbr64 
    1634:	31 ed                	xor    %ebp,%ebp
    1636:	49 89 d1             	mov    %rdx,%r9
    1639:	5e                   	pop    %rsi
    163a:	48 89 e2             	mov    %rsp,%rdx
    163d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1641:	50                   	push   %rax
    1642:	54                   	push   %rsp
    1643:	45 31 c0             	xor    %r8d,%r8d
    1646:	31 c9                	xor    %ecx,%ecx
    1648:	48 8d 3d 01 01 00 00 	lea    0x101(%rip),%rdi        # 1750 <main>
    164f:	ff 15 4b 13 00 00    	call   *0x134b(%rip)        # 29a0 <__libc_start_main@GLIBC_2.34>
    1655:	f4                   	hlt    
    1656:	cc                   	int3   
    1657:	cc                   	int3   
    1658:	cc                   	int3   
    1659:	cc                   	int3   
    165a:	cc                   	int3   
    165b:	cc                   	int3   
    165c:	cc                   	int3   
    165d:	cc                   	int3   
    165e:	cc                   	int3   
    165f:	cc                   	int3   

0000000000001660 <deregister_tm_clones>:
    1660:	48 8d 3d 79 23 00 00 	lea    0x2379(%rip),%rdi        # 39e0 <__TMC_END__>
    1667:	48 8d 05 72 23 00 00 	lea    0x2372(%rip),%rax        # 39e0 <__TMC_END__>
    166e:	48 39 f8             	cmp    %rdi,%rax
    1671:	74 15                	je     1688 <deregister_tm_clones+0x28>
    1673:	48 8b 05 36 13 00 00 	mov    0x1336(%rip),%rax        # 29b0 <_ITM_deregisterTMCloneTable@Base>
    167a:	48 85 c0             	test   %rax,%rax
    167d:	74 09                	je     1688 <deregister_tm_clones+0x28>
    167f:	ff e0                	jmp    *%rax
    1681:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1688:	c3                   	ret    
    1689:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001690 <register_tm_clones>:
    1690:	48 8d 3d 49 23 00 00 	lea    0x2349(%rip),%rdi        # 39e0 <__TMC_END__>
    1697:	48 8d 35 42 23 00 00 	lea    0x2342(%rip),%rsi        # 39e0 <__TMC_END__>
    169e:	48 29 fe             	sub    %rdi,%rsi
    16a1:	48 89 f0             	mov    %rsi,%rax
    16a4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    16a8:	48 c1 f8 03          	sar    $0x3,%rax
    16ac:	48 01 c6             	add    %rax,%rsi
    16af:	48 d1 fe             	sar    %rsi
    16b2:	74 14                	je     16c8 <register_tm_clones+0x38>
    16b4:	48 8b 05 fd 12 00 00 	mov    0x12fd(%rip),%rax        # 29b8 <_ITM_registerTMCloneTable@Base>
    16bb:	48 85 c0             	test   %rax,%rax
    16be:	74 08                	je     16c8 <register_tm_clones+0x38>
    16c0:	ff e0                	jmp    *%rax
    16c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    16c8:	c3                   	ret    
    16c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000016d0 <__do_global_dtors_aux>:
    16d0:	f3 0f 1e fa          	endbr64 
    16d4:	80 3d 2d 23 00 00 00 	cmpb   $0x0,0x232d(%rip)        # 3a08 <completed.0>
    16db:	75 2b                	jne    1708 <__do_global_dtors_aux+0x38>
    16dd:	55                   	push   %rbp
    16de:	48 83 3d da 12 00 00 	cmpq   $0x0,0x12da(%rip)        # 29c0 <__cxa_finalize@GLIBC_2.2.5>
    16e5:	00 
    16e6:	48 89 e5             	mov    %rsp,%rbp
    16e9:	74 0c                	je     16f7 <__do_global_dtors_aux+0x27>
    16eb:	48 8b 3d de 22 00 00 	mov    0x22de(%rip),%rdi        # 39d0 <__dso_handle>
    16f2:	e8 d9 00 00 00       	call   17d0 <__cxa_finalize@plt>
    16f7:	e8 64 ff ff ff       	call   1660 <deregister_tm_clones>
    16fc:	c6 05 05 23 00 00 01 	movb   $0x1,0x2305(%rip)        # 3a08 <completed.0>
    1703:	5d                   	pop    %rbp
    1704:	c3                   	ret    
    1705:	0f 1f 00             	nopl   (%rax)
    1708:	c3                   	ret    
    1709:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001710 <frame_dummy>:
    1710:	f3 0f 1e fa          	endbr64 
    1714:	e9 77 ff ff ff       	jmp    1690 <register_tm_clones>
    1719:	cc                   	int3   
    171a:	cc                   	int3   
    171b:	cc                   	int3   
    171c:	cc                   	int3   
    171d:	cc                   	int3   
    171e:	cc                   	int3   
    171f:	cc                   	int3   

0000000000001720 <uqTVQGZMrg>:
    1720:	55                   	push   %rbp
    1721:	48 89 e5             	mov    %rsp,%rbp
    1724:	48 83 ec 10          	sub    $0x10,%rsp
    1728:	89 7d fc             	mov    %edi,-0x4(%rbp)
    172b:	89 75 f8             	mov    %esi,-0x8(%rbp)
    172e:	8b 75 fc             	mov    -0x4(%rbp),%esi
    1731:	03 75 f8             	add    -0x8(%rbp),%esi
    1734:	48 8d 3d 4e ee ff ff 	lea    -0x11b2(%rip),%rdi        # 589 <_IO_stdin_used+0x19>
    173b:	b0 00                	mov    $0x0,%al
    173d:	e8 9e 00 00 00       	call   17e0 <printf@plt>
    1742:	48 83 c4 10          	add    $0x10,%rsp
    1746:	5d                   	pop    %rbp
    1747:	c3                   	ret    
    1748:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    174f:	00 

0000000000001750 <main>:
    1750:	55                   	push   %rbp
    1751:	48 89 e5             	mov    %rsp,%rbp
    1754:	48 83 ec 10          	sub    $0x10,%rsp
    1758:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    175f:	c7 45 f4 05 00 00 00 	movl   $0x5,-0xc(%rbp)
    1766:	c7 45 f8 07 00 00 00 	movl   $0x7,-0x8(%rbp)
    176d:	8b 35 65 22 00 00    	mov    0x2265(%rip),%esi        # 39d8 <A2oygtfp2R>
    1773:	48 8d 3d fa ed ff ff 	lea    -0x1206(%rip),%rdi        # 574 <_IO_stdin_used+0x4>
    177a:	b0 00                	mov    $0x0,%al
    177c:	e8 5f 00 00 00       	call   17e0 <printf@plt>
    1781:	8b 7d f4             	mov    -0xc(%rbp),%edi
    1784:	8b 75 f8             	mov    -0x8(%rbp),%esi
    1787:	e8 94 ff ff ff       	call   1720 <uqTVQGZMrg>
    178c:	31 c0                	xor    %eax,%eax
    178e:	48 83 c4 10          	add    $0x10,%rsp
    1792:	5d                   	pop    %rbp
    1793:	c3                   	ret    

Disassembly of section .init:

0000000000001794 <_init>:
    1794:	f3 0f 1e fa          	endbr64 
    1798:	48 83 ec 08          	sub    $0x8,%rsp
    179c:	48 8b 05 05 12 00 00 	mov    0x1205(%rip),%rax        # 29a8 <__gmon_start__@Base>
    17a3:	48 85 c0             	test   %rax,%rax
    17a6:	74 02                	je     17aa <_init+0x16>
    17a8:	ff d0                	call   *%rax
    17aa:	48 83 c4 08          	add    $0x8,%rsp
    17ae:	c3                   	ret    

Disassembly of section .fini:

00000000000017b0 <_fini>:
    17b0:	f3 0f 1e fa          	endbr64 
    17b4:	48 83 ec 08          	sub    $0x8,%rsp
    17b8:	48 83 c4 08          	add    $0x8,%rsp
    17bc:	c3                   	ret    

Disassembly of section .plt:

00000000000017c0 <__cxa_finalize@plt-0x10>:
    17c0:	ff 35 22 22 00 00    	push   0x2222(%rip)        # 39e8 <__TMC_END__+0x8>
    17c6:	ff 25 24 22 00 00    	jmp    *0x2224(%rip)        # 39f0 <__TMC_END__+0x10>
    17cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000017d0 <__cxa_finalize@plt>:
    17d0:	ff 25 22 22 00 00    	jmp    *0x2222(%rip)        # 39f8 <__cxa_finalize@GLIBC_2.2.5>
    17d6:	68 00 00 00 00       	push   $0x0
    17db:	e9 e0 ff ff ff       	jmp    17c0 <_fini+0x10>

00000000000017e0 <printf@plt>:
    17e0:	ff 25 1a 22 00 00    	jmp    *0x221a(%rip)        # 3a00 <printf@GLIBC_2.2.5>
    17e6:	68 01 00 00 00       	push   $0x1
    17eb:	e9 d0 ff ff ff       	jmp    17c0 <_fini+0x10>
