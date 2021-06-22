package com.woon.comma.vo;

import java.io.Serializable;
import java.util.Date;

public class BoardVo implements Serializable {

	private static final long serialVersionUID = 384221962137384069L;
	private int seq;
	private String id;
	private String title;
	private String content;
	private Date regdate;
	private int ref;
	private int depth;
	private int step;
	private int viewcount;
	private String delflag;

	public BoardVo() {
	}

	public BoardVo(int seq, String id, String title, String content, Date regdate, int ref, int depth, int step,
			int viewcount, String delflag) {
		this.seq = seq;
		this.id = id;
		this.title = title;
		this.content = content;
		this.regdate = regdate;
		this.ref = ref;
		this.depth = depth;
		this.step = step;
		this.viewcount = viewcount;
		this.delflag = delflag;
	}

	@Override
	public String toString() {
		return "CustomerBoardDto [seq=" + seq + ", id=" + id + ", title=" + title + ", content=" + content
				+ ", regdate=" + regdate + ", ref=" + ref + ", depth=" + depth + ", step=" + step + ", viewcount="
				+ viewcount + ", delflag=" + delflag + "]";
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}

	public int getDepth() {
		return depth;
	}

	public void setDepth(int depth) {
		this.depth = depth;
	}

	public int getStep() {
		return step;
	}

	public void setStep(int step) {
		this.step = step;
	}

	public int getViewcount() {
		return viewcount;
	}

	public void setViewcount(int viewcount) {
		this.viewcount = viewcount;
	}

	public String getDelflag() {
		return delflag;
	}

	public void setDelflag(String delflag) {
		this.delflag = delflag;
	}

}
