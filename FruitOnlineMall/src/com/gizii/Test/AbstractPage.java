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
			throw new ShopException("ҳ������Χ:��ҳ��Ϊ"+this.getPages()+"����ǰҳΪ"+currentPage);
	}
		/*
	 	���������������д������ʼ����Ҳ���Ǽ���countֵ��result����������� �Ĺ��캯���е��á�
	����*/
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
