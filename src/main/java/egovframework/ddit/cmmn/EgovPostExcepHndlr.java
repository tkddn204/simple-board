package egovframework.ddit.cmmn;

import org.egovframe.rte.fdl.cmmn.exception.handler.ExceptionHandler;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class EgovPostExcepHndlr implements ExceptionHandler {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(EgovPostExcepHndlr.class)
	
	@Override
	public void occur(Exception exception, String packageName) {
		LOGGER.error(exception.getMessage(), exception);
	}	
}
