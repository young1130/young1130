<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%--2023. 2. 1. / Kosmo --%>
<%@page trimDirectiveWhitespaces="true"%>

<%
	int menu = Integer.parseInt(request.getParameter("menu"));
if (menu == 1) {
%>
<div id="silver" role="tabpanel"
	aria-labelledby="silver-tab">
	<li><strong class="ic_rank_vip">silver</strong>
		<div class="benefit">
			<div class="listbox">
				<ul class="list type1">
					<li><strong>���߽���Ȱ�������</strong><span><em>1</em> ��</span></li>
					<li><strong>���߰�����</strong><span><em>1</em> ��</span></li>
					<li><strong>����/�ָ�������</strong><span><em>4</em> ��</span></li>
				</ul>
			</div>
		</div>
		<div class="benefit">
			<h4 class="tit">
				���� ���� <span>���ִ� ���� ����</span>
			</h4>
			<ul class="list">
				<li><strong>����M ��ȯ��</strong><span><em>1</em> ��</span></li>
				<li><strong>ź������M ��ȯ��</strong><span><em>1</em> ��</span></li>
				<li><strong>�޺�4õ�� ���α�</strong><span><em>1</em> ��</span></li>
				<li>&nbsp;</li>
			</ul>
		</div>
		<div class="benefit">
			<h4 class="tit">
				����� <span>���� ����� Ư���� �� ����</span>
			</h4>
			<ul class="list type1">
				<li><strong>����Ʈ�޺� ��ȯ��</strong><span><em>1</em> ��</span></li>
			</ul>
		</div></li>
</div>
<%
	} else if (menu == 2) {
%>
<div id="gold" role="tabpanel"
			aria-labelledby="gold-tab">
			<li><strong class="ic_rank_vvip">gold</strong>
				<div class="benefit">
					<div class="listbox">
						<ul class="list type1">
							<li><strong>���߽���Ȱ�������</strong><span><em>1</em> ��</span></li>
							<li><strong>���߰�����</strong><span><em>1</em> ��</span></li>
							<li><strong>����/�ָ�������</strong><span><em>6</em> ��</span></li>
						</ul>
					</div>
				</div>
				<div class="benefit">
					<h4 class="tit">
						���� ���� <span>���ִ� ���� ����</span>
					</h4>
					<ul class="list">
						<li><strong>����M ��ȯ��</strong><span><em>2</em> ��</span></li>
						<li><strong>ź������M ��ȯ��</strong><span><em>2</em> ��</span></li>
						<li><strong>�޺�4õ�� ���α�</strong><span><em>3</em> ��</span></li>
						<li>&nbsp;</li>
					</ul>
				</div>
				<div class="benefit">
					<h4 class="tit">
						����� <span>���� ����� Ư���� �� ����</span>
					</h4>
					<ul class="list type1">
						<li><strong>����Ʈ�޺� ��ȯ��</strong><span><em>1</em> ��</span></li>
					</ul>
				</div></li>
		</div>

<%
	} else if (menu == 3) {
%>
<div id="platinum" role="tabpanel"
			aria-labelledby="platinum-tab">
			<li><strong class="ic_rank_gold">platinum</strong>
				<div class="benefit">
					<div class="listbox">
						<ul class="list type1">
							<li><strong>���߽���Ȱ�������</strong><span><em>2</em> ��</span></li>
							<li><strong>���߰�����</strong><span><em>2</em> ��</span></li>
							<li><strong>����/�ָ�������</strong><span><em>8</em> ��</span></li>
						</ul>
					</div>
				</div>
				<div class="benefit">
					<h4 class="tit">
						���� ���� <span>���ִ� ���� ����</span>
					</h4>
					<ul class="list">
						<li><strong>����M ��ȯ��</strong><span><em>1</em> ��</span></li>
						<li><strong>����Ʈ�޺� ��ȯ��</strong><span><em>1</em> ��</span></li>
						<li><strong>���̵� ���α�</strong><span><em>1</em> ��</span></li>
						<li><strong>�޺�4õ�� ���α�</strong><span><em>3</em> ��</span></li>
					</ul>
				</div>
				<div class="benefit">
					<h4 class="tit">
						����� <span>���� ����� Ư���� �� ����</span>
					</h4>
					<ul class="list type1">
						<li><strong>����Ʈ�޺� ��ȯ��</strong><span><em>1</em> ��</span></li>
					</ul>
				</div></li>
		</div>

<%
	}else if (menu == 4) {	
%>
<div id="diamond" role="tabpanel"
			aria-labelledby="diamond-tab">
			<li><strong class="ic_rank_platinum">diamond</strong>
				<div class="benefit">
					<div class="listbox">
						<ul class="list type1">
							<li><strong>���߽���Ȱ�������</strong><span><em>2</em> ��</span></li>
							<li><strong>���߰�����</strong><span><em>2</em> ��</span></li>
							<li><strong>����/�ָ�������</strong><span><em>10</em> ��</span></li>
						</ul>
					</div>
				</div>
				<div class="benefit">
					<h4 class="tit">
						���� ���� <span>���ִ� ���� ����</span>
					</h4>
					<ul class="list">
						<li><strong>����M ��ȯ��</strong><span><em>2</em> ��</span></li>
						<li><strong>����Ʈ�޺� ��ȯ��</strong><span><em>1</em> ��</span></li>
						<li><strong>���̵� ���α�</strong><span><em>2</em> ��</span></li>
						<li><strong>�޺�4õ�� ���α�</strong><span><em>5</em> ��</span></li>
					</ul>
				</div>
				<div class="benefit">
					<h4 class="tit">
						����� <span>���� ����� Ư���� �� ����</span>
					</h4>
					<ul class="list type1">
						<li><strong>����Ʈ�޺� ��ȯ��</strong><span><em>1</em> ��</span></li>
					</ul>
				</div></li>
		</div>
	
<%
}
 %>