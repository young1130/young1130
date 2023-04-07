package movie.pak.dto;

import java.util.List;

public class SnackBuyDTO {
	/*
	 * SNACKBUYNUM	NUMBER
LID	VARCHAR2(30 BYTE)
POPPAY	NUMBER
POPNAME	VARCHAR2(25 BYTE)
SNACKSARAM	NUMBER
	 * 
	 * */
private int snackbuynum,poppay,snacksaram;
private String lid,popname,sbdate;
private List<SnackUpDTO> snackuplist;



public List<SnackUpDTO> getSnackuplist() {
	return snackuplist;
}
public void setSnackuplist(List<SnackUpDTO> snackuplist) {
	this.snackuplist = snackuplist;
}
public int getSnackbuynum() {
	return snackbuynum;
}
public void setSnackbuynum(int snackbuynum) {
	this.snackbuynum = snackbuynum;
}
public int getPoppay() {
	return poppay;
}
public void setPoppay(int poppay) {
	this.poppay = poppay;
}
public int getSnacksaram() {
	return snacksaram;
}
public void setSnacksaram(int snacksaram) {
	this.snacksaram = snacksaram;
}

public String getLid() {
	return lid;
}
public void setLid(String lid) {
	this.lid = lid;
}
public String getPopname() {
	return popname;
}
public void setPopname(String popname) {
	this.popname = popname;
}
public String getSbdate() {
	return sbdate;
}
public void setSbdate(String sbdate) {
	this.sbdate = sbdate;
}



}
