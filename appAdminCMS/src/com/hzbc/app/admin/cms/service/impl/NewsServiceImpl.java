package com.hzbc.app.admin.cms.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hzbc.app.admin.cms.dao.NewsDao;
import com.hzbc.app.admin.cms.entity.News;
import com.hzbc.app.admin.cms.service.NewsService;

@Transactional
@Service("newsService")
public class NewsServiceImpl implements NewsService {

	@Autowired
	public NewsDao newsDao;
	@Override
	public void addNews(News news) {
		// TODO Auto-generated method stub
		newsDao.addNews(news);
	}
	@Override
	public List<News> findNews() {
		// TODO Auto-generated method stub
		return newsDao.findNews();
	}
	@Override
	public List<News> findNewsByTime() {
		// TODO Auto-generated method stub
		return newsDao.findNewsByTime();
	}
	@Override
	public List<News> findNewsByTop() {
		// TODO Auto-generated method stub
		return newsDao.findNewsByTop();
	}
	@Override
	public void updateNewsFlag() {
		// TODO Auto-generated method stub
		newsDao.updateNewsFlag();
	}
	@Override
	public List<News> findUpNewsByFlag() {
		// TODO Auto-generated method stub
		return newsDao.findUpNewsByFlag();
	}
	@Override
	public void deleteNewsById(Integer id) {
		// TODO Auto-generated method stub
		newsDao.deleteNewsById(id);
	}
	@Override
	public List<News> modifyNews(News news) {
		// TODO Auto-generated method stub
		return newsDao.modifyNews(news);
	}
	@Override
	public List<News> findNewsById(Integer id) {
		// TODO Auto-generated method stub
		return newsDao.findNewsById(id);
	}
	

}
