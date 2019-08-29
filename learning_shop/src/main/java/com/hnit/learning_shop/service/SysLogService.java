package com.hnit.learning_shop.service;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hnit.learning_shop.dao.SysLogMapper;
import com.hnit.learning_shop.entity.SysLog;
import com.hnit.learning_shop.entity.SysLogExample;
@Service
@Transactional
public class SysLogService {
	@Autowired
	private SysLogMapper sysLogMapper;
	public void save(SysLog sysLog) {
		sysLogMapper.insert(sysLog);
	}
	public List<SysLog> findAllSyslog() {
		SysLogExample example = new SysLogExample();
		example.setOrderByClause("visit_time desc");
		return sysLogMapper.selectByExample(example);
	}

}
