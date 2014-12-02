package com.gizii.po;

public class ShopException extends RuntimeException {
	

	private static final long serialVersionUID = -4529856990282588298L;

	public ShopException() {
		super();
	}

	public ShopException(String message, Throwable cause) {
		super(message, cause);
	}

	public ShopException(String message) {
		super(message);
	}

	public ShopException(Throwable cause) {
		super(cause);
	}

}
