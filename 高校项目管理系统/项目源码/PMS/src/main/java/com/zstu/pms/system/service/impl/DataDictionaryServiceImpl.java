package com.zstu.pms.system.service.impl;

import java.util.List;

import javax.annotation.Resource;

import com.zstu.pms.mapper.DataDictionaryMapper;
import com.zstu.pms.model.DataDictionary;
import com.zstu.pms.model.DataDictionaryExample;
import com.zstu.pms.system.service.DataDictionaryService;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service("dataDictionaryServiceImpl")
@Transactional
public class DataDictionaryServiceImpl implements DataDictionaryService {

	@Resource(name ="dataDictionaryMapper")
	private DataDictionaryMapper dataDictionaryMapper;

	@Override
	public boolean saveDataDictionary(DataDictionary dataDictionary) {
		int i = dataDictionaryMapper.insertSelective(dataDictionary);
		return i>0;
	}

	@Override
	public boolean updateDataDictionary(DataDictionary dataDictionary) {
		int i = dataDictionaryMapper.updateByPrimaryKeySelective(dataDictionary);
		return i>0;
	}
	
	@Override
	public boolean deleteDataDictionary(String dataId) {
		int i = dataDictionaryMapper.deleteByPrimaryKey(dataId);
		return i>0;
	}

	@Override
	public List<DataDictionary> listDataDictionary(DataDictionary dataDictionary) {
		DataDictionaryExample dataDictionaryExample = new DataDictionaryExample();
		// 创建数据字典的查找条件
		DataDictionaryExample.Criteria criteria = dataDictionaryExample.createCriteria();
		if (dataDictionary != null) {
			// 根据数据字典的类型进行查找
			if (!StringUtils.isEmpty(dataDictionary.getDataType())) {
				if(!dataDictionary.getDataType().equals("-1")) {
					// 如果是默认选项则不会拼接查找条件
					criteria.andDataTypeEqualTo(dataDictionary.getDataType());
				}
			}
			// 根据数据字典的名称进行查找
			if(!StringUtils.isEmpty(dataDictionary.getDataContent())) {
				criteria.andDataContentLike("%"+dataDictionary.getDataContent().trim()+"%");
			}
		}
		return dataDictionaryMapper.selectByExample(dataDictionaryExample);
	}

	@Override
	public DataDictionary getDataDictionary(String dataId) {
		return dataDictionaryMapper.selectByPrimaryKey(dataId);
	}

	@Override
	public List<DataDictionary> getDataDictionaryByType(String dataType) {
		DataDictionaryExample dataDictionaryExample = new DataDictionaryExample();
		// 创建数据字典的查找条件
		DataDictionaryExample.Criteria criteria = dataDictionaryExample.createCriteria();
		if(!StringUtils.isEmpty(dataType)){
			criteria.andDataTypeEqualTo(dataType);
		}
		return dataDictionaryMapper.selectByExample(dataDictionaryExample);
	}

	@Override
	public List<String> getAllDataType() {
		return dataDictionaryMapper.selectAllDataType();
	}


}
