package movie.pak.dto;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class MovieUpDTO {
	
	private String mimg,mname,mtype,mtime,mstartday,mdirec,mstory,mactor,rownum;
	private int mno,msaram,mage,mgrno;
	private List<MovieBuyDTO> moviebuy; // 1:N 관계에서 moivebuy가 N이기 때문에 리스트로 VO에 추가
	

	private MultipartFile mfile;
	
	public String getRownum() {
		return rownum;
	}
	public void setRownum(String rownum) {
		this.rownum = rownum;
	}
	public List<MovieBuyDTO> getMoviebuy() {
		return moviebuy;
	}
	public MultipartFile getMfile() {
		return mfile;
	}
	public void setMfile(MultipartFile mfile) {
		this.mfile = mfile;
	}
	public void setMoviebuy(List<MovieBuyDTO> moviebuy) {
		this.moviebuy = moviebuy;
	}
	public String getMimg() {
		return mimg;
	}
	public void setMimg(String mimg) {
		this.mimg = mimg;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMtype() {
		return mtype;
	}
	public void setMtype(String mtype) {
		this.mtype = mtype;
	}
	public String getMtime() {
		return mtime;
	}
	public void setMtime(String mtime) {
		this.mtime = mtime;
	}
	public String getMstartday() {
		return mstartday;
	}
	public void setMstartday(String mstartday) {
		this.mstartday = mstartday;
	}
	public String getMdirec() {
		return mdirec;
	}
	public void setMdirec(String mdirec) {
		this.mdirec = mdirec;
	}
	public String getMstory() {
		return mstory;
	}
	public void setMstory(String mstory) {
		this.mstory = mstory;
	}
	public String getMactor() {
		return mactor;
	}
	public void setMactor(String mactor) {
		this.mactor = mactor;
	}
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public int getMsaram() {
		return msaram;
	}
	public void setMsaram(int msaram) {
		this.msaram = msaram;
	}
	public int getMage() {
		return mage;
	}
	public void setMage(int mage) {
		this.mage = mage;
	}
	public int getMgrno() {
		return mgrno;
	}
	public void setMgrno(int mgrno) {
		this.mgrno = mgrno;
	}
	

}
