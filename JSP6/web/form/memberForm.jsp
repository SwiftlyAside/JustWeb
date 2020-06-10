<%@ page contentType="text/html; charset=UTF-8"%>

<center>
<table>
	<tr>
		<td align='right' height=40>아이디</td>
		<td>
			<input type=text name='id' placeholder='id 입력'/> 
		</td>
		<td align='right' width=120>성 별</td>
		<td>
			<input type=radio name='gender' value='m' checked="checked"/>남자
			<input type=radio name='gender' value='w' />여자 
		</td>
	</tr>
	<tr>
		<td align='right' height=40>패스워드</td>
		<td>
			<input type=text name='pw' placeholder='pw 입력'/> 
		</td>
		<td align='right'>패스워드 확인</td>
		<td>
			<input type=text name='pw' placeholder='pw 입력'/> 
		</td>
	</tr>
	<tr>
		<td align='right' height=40>E-Mail</td>
		<td>
			<input type=text name='email' placeholder='E-Mail 입력'/> 
		</td>
		<td align='right'>인증번호</td>
		<td>
			<input type=text name='authNum' placeholder='인증번호 입력'/> 
		</td>
	</tr>
	<tr>
		<td align='center' height=40 colspan=4>
			<input type=submit value='로그인' style="width: 120px; "/>
			<input type=reset value='취소' style="width: 120px; "/>	 
		</td>
	</tr>
</table>
</center>