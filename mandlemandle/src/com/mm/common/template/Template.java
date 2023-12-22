package com.mm.common.template;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Template {
	/*
	 * 기존 JDBC
	 * 1) getConnection함수 존재 => driver.properties파일을 읽어들여서
	 * 		해당 DB와 접속된 Connection객체를 생성해서 반환
	 * 
	 * 2) close함수들 -> 전달받은 jdbc객체를 반납시키는 함수
	 * 
	 * 3) 트랜잭션 함수들 (commit, rollback)
	 */
	
//	마이바티스
	public static SqlSession getSqlSession() {
//		마이바티스 설정정보 읽어들이기
//		mybatis-config.xml
//		설정정보안에 저장된 DB와 접속하여 SqlSession객체를 생성 후 반환 예정
		SqlSession sqlSession = null;
//		SqlSession객체를 생성하기 위해서는 SqlSessionFactory객체 필요
//		SqlSessionFactory객체를 생성하기위해서는 SqlSessionFactoryBuilder 객체가 필요
		String resource = "/mybatis-config.xml"; // /는 최상위 폴더(classes)
		try {
			InputStream stream = Resources.getResourceAsStream(resource);
//			1단계) new SqlSessionFactoryBuilder() : SqlSessionFactoryBuilder객체 생성
//			2단계) .build(stream) : 통로로부터 mybatis-config.xml파일을 읽음
//			3단계) .openSession(false) : sqlSession객체 생성 및 트랜잭션 처리 시 자동 커밋 지정 여부
//			false로 설정 시 자동커밋을 하지 않음 -> 기본값은 false
			
			SqlSessionFactory ssfb = new SqlSessionFactoryBuilder().build(stream);
			sqlSession = ssfb.openSession(false);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return sqlSession;
	}
}
