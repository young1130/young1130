<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��ٱ���</title>

</head>
<body>
    <section class="cart">
        <div class="cart__information">
        </div>
            <form>
        <table class="cart__list">
                <thead>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>�����̹���</td>
                        <td>���ܹ�ȣ</td>
                        <td>���ܼ���</td>
                        <td>���ܱݾ�</td>
                        <td>��������</td>
                    </tr>
                </thead>
                <tbody>
                    <tr class="cart__list__detail">
                        <td><input type="checkbox"></td>
                        <td><img src="resources/image/pop.PNG" alt="popcorn"></td>
                        <td class="number">1568365</td>
                        <td class="cart__list__option">���ܼ��� : 10��<br><br>
                            <button class="cart__list__optionbtn">�ֹ����� �߰�/����</button>
                        </td>
                        <td class="price">116,620��<br>
                        </td>
                        <td><button class="cart__list__orderbtn">�����ϱ�</button></td>
                    </tr>
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="3"><input type="checkbox" class="check">&nbsp;&nbsp; 
                         <button class="cart__list__optionbtn">���û�ǰ ����</button>  
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tfoot>
        </table>
        
        <br>
                <table class="cart__list">
                <thead>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>���Ź�ȣ</td>
                        <td>������</td>
                        <td>�ο� ��</td>
                        <td>�󿵰�</td>
                        <td>���űݾ�</td>
                        <td>��������</td>
                    </tr>
                </thead>
                <tbody>
                    <tr class="cart__list__detail2">
                        <td><input type="checkbox"></td>
                        <td class="number">1568365</td>
                        <td class="mday">22/12/20</td>
                        <td class="cart__list__option">�ο� �� : 5�� <br><br>
                            <button class="cart__list__optionbtn">�ο� �߰�/����</button>
                        </td>
                        <td>private</td>
                        <td class="price">150,000<br>  
                        </td>
                        <td><button class="cart__list__orderbtn">�����ϱ�</button></td>
                    </tr>
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="3"><input type="checkbox" class="check">&nbsp;&nbsp; <button class="cart__list__optionbtn">���û�ǰ ����</button>  
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tfoot>
        </table>
        </form>
        <div class="cart__mainbtns">
            <button class="button-l">�����ϱ�</button>
           <a href="pro.movie?cmd=demo&scmd=pay"> <button class="button-l">�����ϱ�</button></a>
        </div>
    </section>
</body>

<style>
.mday{
	  text-align: center;
  font-weight: bold;
  margin: auto;
  font-size: 14px;
}
.check {
  margin: auto;
  text-align: center;
}
.number {
	  text-align: center;
  font-weight: bold;
  margin: auto;
  font-size: 14px;
}
body {
  margin: 0;
}

* {
  box-sizing: border-box;
}

img {
  display: block;
  width: 80px;
  height: 80px;
  margin: auto;
}

.cart {
  width: 80%;
  margin: auto;
  padding: 30px;
}


table {
  border-top: solid 1.5px black;
  border-collapse: collapse;
  width: 100%;
  font-size: 14px;
}

thead {
  text-align: center;
  font-weight: bold;
}

tbody {
  font-size: 12px;
}

td {

  padding: 15px 0px;
  border-bottom: 1px solid lightgrey;
   
}

.cart__list__option {
  vertical-align: top;
  padding: 20px;
  text-align: center;
  font-weight: bold;
  margin: auto;
  font-size: 14px;
}

.cart__list__option {
  margin-bottom: 25px;
  position: relative;
}

.cart__list__optionbtn {
  background-color: white;
  font-size: 10px;
  border: lightgrey solid 1px;
  padding: 7px;
}
.cart__list__detail :nth-child(1),
.cart__list__detail :nth-child(2),
.cart__list__detail :nth-child(3) {
  text-align: center;
}
.cart__list__detail :nth-child(4),
.cart__list__detail :nth-child(5),
.cart__list__detail :nth-child(6) {
  border-left: 2px solid whitesmoke;
   text-align: center;
}

.cart__list__detail :nth-child(5),
.cart__list__detail :nth-child(6) {
  text-align: center;
}

.cart__list__detail :nth-child(6) button {
  background-color: #C60B05;
  color: #c9b459;
  border: none;
  border-radius: 5px;
  padding: 4px 8px;
  font-size: 12px;
  margin-top: 5px;
}

.cart__list__detail2 :nth-child(1),
.cart__list__detail2 :nth-child(2),
.cart__list__detail2 :nth-child(3) {
  text-align: center;
}
.cart__list__detail2 :nth-child(4),
.cart__list__detail2 :nth-child(5),
.cart__list__detail2 :nth-child(6) {
  border-left: 2px solid whitesmoke;
   text-align: center;
}

.cart__list__detail2 :nth-child(5),
.cart__list__detail2 :nth-child(6) {
  text-align: center;
}

.cart__list__detail2 :nth-child(7)
 button {
  background-color: #C60B05;
  color: #c9b459;
  border: none;
  border-radius: 5px;
  padding: 4px 8px;
  font-size: 12px;
  margin-top: 5px;
  margin : auto;
  text-align: center;
}

.price {
  font-weight: bold;
  font-size: 16px
}

.cart__mainbtns {
  width: 420px;
  height: 200px;
  padding-top: 40px;
  display: block;
  margin: auto;
}

.cart__bigorderbtn {
  width: 200px;
  height: 50px;
  font-size: 16px;
  margin: auto;
  border-radius: 5px;
}

.cart__bigorderbtn.left {
  background-color: white;
  border: 1px lightgray solid;
}

.cart__bigorderbtn.right {
  background-color: #C60B05;
  color: #c9b459;
  border: none;
}
.cart__list__orderbtn{
	 background-color: #C60B05;
	   color: #c9b459;
	     border: none;
}
</style>
</html>