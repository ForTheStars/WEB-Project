package com.gizii.Test;

import java.util.List;

import com.gizii.po.ShopException;


public abstract class AbstractPage<T> implements Pageable<T> {
	public final static int DEFAULT_PAGESIZE = 20;
	private int currentPage;
	private int pageSize;
	private int pages;

	protected int count;
	protected List<T> result;

	public AbstractPage(int currentPage){
			this.currentPage = currentPage;
			this.pageSize = DEFAULT_PAGESIZE;
	}
	
	public AbstractPage(int currentPage,int pageSize) {
			this.currentPage=currentPage;
			this.pageSize=pageSize;
	}

	protected void checkPage(int currentPage) throws ShopException{
			if((currentPage<1)||(currentPage>this.getPages()))
			throw new ShopException("页超出范围:总页数为"+this.getPages()+"，当前页为"+currentPage);
	}
		/*
	 	这个方法被子类重写用来初始化，也就是计算count值和result结果，在子类 的构造函数中调用。
	　　*/
		abstract protected void init() throws ShopException;
	
		public List<T> getResult(){
			return result;
		}
		
		public int getCount(){
			return count;
		}
	public int getPageSize(){
		return pageSize;
	}

	public int getCurrentPage(){
		return currentPage;
	}

	public int getPages(){
		if(pages==0) this.pages=(count+pageSize-1)/pageSize;
			return pages;
	}

}
