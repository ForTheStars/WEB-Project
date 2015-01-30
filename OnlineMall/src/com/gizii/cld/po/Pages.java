package com.gizii.cld.po;

import java.util.List;

public class Pages<E> {
	private int pageIndex;
	private int pageSize;
	private int pageOffset;
	private int totalRecor;
	private int totalPage;
	private List<E> Datas;
	
	
	public int getPageIndex() {
		return pageIndex;
	}
	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getPageOffset() {
		return pageOffset;
	}
	public void setPageOffset(int pageOffset) {
		this.pageOffset = pageOffset;
	}
	public int getTotalRecor() {
		return totalRecor;
	}
	public void setTotalRecor(int totalRecor) {
		this.totalRecor = totalRecor;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public List<E> getDatas() {
		return Datas;
	}
	public void setDatas(List<E> Datas) {
		this.Datas = Datas;
	}
	
}
