package com.devfun.dao;
 
import java.util.List;
 
import javax.inject.Inject;
 
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
 
import com.devfun.vo.ProductVO;
 
@Repository
public class ProductDAOImpl implements ProductDAO {
 
    @Inject
    private SqlSession sqlSession;
    
    private static final String Namespace = "com.devfun.mybatis.sql.test";
    

	@Override
	public List<ProductVO> selectProduct() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(Namespace+".selectProduct");
	}
 
}