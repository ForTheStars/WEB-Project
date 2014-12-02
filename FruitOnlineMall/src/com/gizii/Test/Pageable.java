package com.gizii.Test;

import java.util.List;

public interface Pageable<T>{
	
	
	public List<T> getResult();
	
	public int getCount();

	public int getPageSize();

	public int getCurrentPage();

	public int getPages();
}