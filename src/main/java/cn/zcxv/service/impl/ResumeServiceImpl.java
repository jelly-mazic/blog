package cn.zcxv.service.impl;

import cn.zcxv.dao.ResumeDao;
import cn.zcxv.entity.Resume;
import cn.zcxv.service.ResumeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class ResumeServiceImpl implements ResumeService {
    @Resource
    private ResumeDao resumeDao;

    @Override
    public Resume seeResume(int id) {
        Resume resume = resumeDao.queryResume(id);
        return resume;
    }
}
