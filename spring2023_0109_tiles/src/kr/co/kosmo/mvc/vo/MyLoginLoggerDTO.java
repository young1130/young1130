package kr.co.kosmo.mvc.vo;

public class MyLoginLoggerDTO {
//	NUM    NOT NULL NUMBER        
//	IDN             VARCHAR2(10)  
//	REIP            VARCHAR2(30)  
//	UAGENT          VARCHAR2(150) 
//	STATUS          VARCHAR2(10)  	�α��� ����
//	SSTIME          DATE  			�α��� �ð���
	private int num;
	private String idn, reip, uagent, status, sstime, eetime;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getIdn() {
		return idn;
	}
	public void setIdn(String idn) {
		this.idn = idn;
	}
	public String getReip() {
		return reip;
	}
	public void setReip(String reip) {
		this.reip = reip;
	}
	public String getUagent() {
		return uagent;
	}
	public void setUagent(String uagent) {
		this.uagent = uagent;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getSstime() {
		return sstime;
	}
	public void setSstime(String sstime) {
		this.sstime = sstime;
	}
	public String getEetime() {
		return eetime;
	}
	public void setEetime(String eetime) {
		this.eetime = eetime;
	}

	
	
}
