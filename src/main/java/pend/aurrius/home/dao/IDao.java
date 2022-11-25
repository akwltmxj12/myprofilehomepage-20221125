package pend.aurrius.home.dao;

import java.util.ArrayList;
import java.util.List;

import pend.aurrius.home.dto.MemberDto;
import pend.aurrius.home.dto.QBoardDto;

public interface IDao {

	
	//회원 가입
	public int memberJoin(String mid, String mpw, String mname, String memail);//회원 가입 insert
	public int checkId(String mid);//아이디 존재여부 확인 select
	public int checkIdAndPW(String mid, String mpw);//아이디와 비밀번호의 존재 및 일치 여부 select
	public MemberDto getMemberInfo(String mid);//아이디로 조회하여 회원정보 가져오기 select
	public void memberModify(String mid, String mpw, String mname, String memail);//회원 정보 수정 update
	
	//질문게시판
	public void writeQuestion(String qid, String qname, String qcontent, String qemail);//질문하기 insert
	public List<QBoardDto> questionList();//질문게시판 리스트 가져오기 select
	public QBoardDto questionView(String qnum); // 게시판 번호 검색
	public void questionModify(String qnum, String qname, String qcontent, String gmail);	// 해당 글번호로 조회하여 질문 수정 update
	public void questionDelete(String qnum); // 게시판 번호찾아서 삭제 delete
	
	
}
